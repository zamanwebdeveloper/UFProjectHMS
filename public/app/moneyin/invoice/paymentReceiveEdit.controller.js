
var invoice = angular.module('app', []);
invoice.controller('PaymentReceiveEditController', PaymentReceiveEditController);

function PaymentReceiveEditController($scope, $http) {

    $scope.invoice_amount_temp                  = [];
    $scope.payment_receive_adjustment           = [];
    $scope.payment_receive_note                 = [];
    $scope.vat_adjust_des                       = [];
    $scope.other_adjust_des                     = [];
    $scope.tax_adjust_des                       = [];

    $scope.vatadjustmentmsg                     = "Vat adjustment total is not correct";
    $scope.taxadjustmentmsg                     = "Tax adjustment total is not correct";
    $scope.otheradjustmentmsg                   = "Other adjustment total is not correct";
    $scope.successMessage                       = "OK!!";

    $( document.body ).click(function() {
        //  $scope.calculateExcessPayment(0);
    });


    var payment_receive_id = document.getElementsByName('payment_receive_id')[0].value;

    $http
        .get(window.location.origin + "/api/payment-receive/get-payment-receive-entry/" + payment_receive_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){

            $scope.payment_receive_entry        = response.data.payment_receive_entry;
            customer_id                         = response.data.customer_id;
            account_id                          = response.data.account_id;
            customer                            = response.data.customer;
            paid_receives                       = response.data.paid_receives;
            payment_receive_amount              = response.data.payment_receive_amount;
            payment_receive_excess_payment      = response.data.payment_receive_excess_payment;
            vat_adjustment_amount               = response.data.vat_adjustment_amount;
            tax_adjustment_amount               = response.data.tax_adjustment_amount;
            others_adjustment_amount            = response.data.others_adjustment_amount;
            $scope.amount                       = payment_receive_amount;
            $scope.amount_received              = payment_receive_amount;

            $('#customer_id').kendoDropDownList({
                optionLabel   : "Select Customer",
                dataTextField: "text",
                dataValueField: "value",
                dataSource: customer,
                dataType: "jsonp",
                filter: "contains",
                index: 0
            });

            $('#account_id').kendoDropDownList({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: paid_receives,
                dataType: "jsonp",
                filter: "contains",
                index: 0
            });

            var dropdownlist = $("#customer_id").data("kendoDropDownList");
            dropdownlist.value(customer_id);

            var dropdownlist = $("#account_id").data("kendoDropDownList");
            dropdownlist.value(account_id);

            $scope.account_type             = account_id;
            $scope.vat_edit_total           = 0;
            $scope.tax_edit_total           = 0;
            $scope.other_edit_total         = 0;

            $http
                .get(window.location.origin + "/api/payment-receive/get-customer-invoice-edit/" + payment_receive_id, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined, 'Process-Data': false}
                })
                .then(function(response){

                    var element         = {};
                    var data            = [];
                    var j               = 0;

                    for(var i = 0; i < response.data.invoices.length; i++)
                    {
                        element.id                          = response.data.invoices[i].id;
                        element.invoice_date                = response.data.invoices[i].invoice_date;
                        element.invoice_number              = response.data.invoices[i].invoice_number;
                        element.vat_des                     = response.data.invoices[i].vat_adjustment;
                        element.tax_des                     = response.data.invoices[i].tax_adjustment;
                        element.other_des                   = response.data.invoices[i].others_adjustment;
                        element.amount                      = response.data.invoices[i].total_amount;
                        element.due_amount                  = response.data.invoices[i].due_amount;

                        $scope.vat_edit_total               = parseFloat($scope.vat_edit_total) + parseFloat(response.data.invoices[i].vat_adjustment);
                        $scope.tax_edit_total               = parseFloat($scope.tax_edit_total) + parseFloat(response.data.invoices[i].tax_adjustment);
                        $scope.other_edit_total             = parseFloat($scope.other_edit_total) + parseFloat(response.data.invoices[i].others_adjustment);

                        if($scope.payment_receive_entry[j]){
                            if(response.data.invoices[i].id == $scope.payment_receive_entry[j].invoice_id)
                            {
                                element.payment = $scope.payment_receive_entry[j].amount;
                                j++;

                                if(j == $scope.payment_receive_entry.length)
                                {
                                    j = 0;
                                }
                            } else
                            {
                                element.payment = 0;
                            }
                        } else
                        {
                            element.payment = 0;
                        }

                        data.push(element);
                        element = {};
                    }
                    if(data.length == 0) {
                        $http
                            .get(window.location.origin + "/api/payment-receive/get-customer-invoice/" + customer_id, {
                                transformRequest: angular.identity,
                                headers: {'Content-Type': undefined, 'Process-Data': false}
                            })
                            .then(function(response){
                                $scope.invoices = response.data.invoices;

                            });
                    }

                    $scope.invoices      = data;
                    $scope.vat_adjust    = vat_adjustment_amount;
                    $scope.tax_adjust    = tax_adjustment_amount;
                    $scope.other_adjust  = others_adjustment_amount;

                    $scope.amount_received  = payment_receive_amount;
                    $scope.used_amount      = parseFloat(payment_receive_amount) - parseFloat(payment_receive_excess_payment);
                    $scope.excess_amount    = payment_receive_excess_payment;

                })
                .finally(function () {
                    $scope.ShowAmount();

                    //$scope.calculateExcessPaymentAmount();
                });
        });

    $scope.getAccountType = function () {

        $scope.account_type = $("#account_id").data("kendoDropDownList").value();
    }

    $scope.ShowAmount = function () {

        $scope.invoice_amount   = [];
        var len                 = $scope.invoices.length;

        for(var i = 0; i < len; i++)
        {
            $scope.invoice_amount[i]                = $scope.invoices[i].payment;
            $scope.invoice_amount_temp[i]           = $scope.invoices[i].payment;

            for(var j = 0; j < $scope.payment_receive_entry.length; j++){

                if($scope.invoices[i].id == $scope.payment_receive_entry[j].invoice_id){
                    
                    $scope.vat_adjust_des[i]        = $scope.payment_receive_entry[j].vat_adjustment;
                    $scope.tax_adjust_des[i]        = $scope.payment_receive_entry[j].tax_adjustment;
                    $scope.other_adjust_des[i]      = $scope.payment_receive_entry[j].others_adjustment;
                }
            }
        }
    }


    $scope.amountReceived = function () {
        // $scope.amount_received = $scope.amount;
        // $scope.calculateExcessPayment(0);

        $scope.amount_received = parseFloat($scope.amount);
        var received_amount = parseFloat($scope.amount_received);
        for(var i = 0; i < $scope.invoices.length; i++)
        {
            if(received_amount > ($scope.invoices[i].due_amount + $scope.invoices[i].payment))
            {
                $scope.invoice_amount[i] = parseFloat($scope.invoices[i].due_amount) + $scope.invoices[i].payment;
                $scope.invoice_amount_temp[i] = parseFloat($scope.invoices[i].due_amount) + $scope.invoices[i].payment;
                received_amount = parseFloat(received_amount - ($scope.invoices[i].due_amount + $scope.invoices[i].payment));
            }
            else
            {
                $scope.invoice_amount[i] = parseFloat(received_amount);
                $scope.invoice_amount_temp[i] = parseFloat(received_amount);
                received_amount = 0;
            }
            $scope.calculateExcessPayment(i);
        }
    }

    $scope.calculateExcessPaymentAmount  =  function () {

        var pay_sum             = 0;
        var balance             = 0;
        var payment_adjustment  = $scope.amount || 0;
        var len                 = $scope.invoices.length;

        if(typeof payment_adjustment == "undefined" || payment_adjustment == '')
        {
            payment_adjustment  = 0;
        }
        else
        {
            payment_adjustment  = parseFloat(payment_adjustment).toFixed(2);
        }

        $(".uk-table tbody").find('input.payment_original_adjust_des').each(function(i) {
                       
            pay_sum             = pay_sum + parseFloat($(this).val()||0);

        });

        payment_adjustment      = parseFloat(payment_adjustment).toFixed(2);
        balance                 = payment_adjustment - parseFloat(pay_sum).toFixed(2);

        $scope.amount_received  = payment_adjustment;
        $scope.used_amount      = pay_sum;
        $scope.excess_amount    = parseFloat(balance).toFixed(2);
    }

    $scope.calculateAdjustment = function (index) {

        if(!parseFloat($scope.amount))
        {
            $scope.payment_receive_adjustment[index] = 0;
            alert("Please Enter Amount");
        }

        if(($scope.invoice_amount_temp[index] - parseFloat($scope.payment_receive_adjustment[index])) < 0)
        {
            $scope.payment_receive_adjustment[index] = $scope.invoice_amount_temp[index];
            $scope.invoice_amount[index] = 0;
        }

        if(!parseFloat($scope.payment_receive_adjustment[index]))
            $scope.payment_receive_adjustment[index] = 0;

        $scope.invoice_amount[index] = $scope.invoice_amount_temp[index] - parseFloat($scope.payment_receive_adjustment[index]);


        $scope.calculateExcessPayment(index);
    }

    $scope.amountReceived = function () {


        var received_amount = parseFloat($scope.amount)||0;

        for(var i = 0; i < $scope.invoices.length; i++)
        {
            var tem_due = parseFloat($('.uk-table > tbody > tr').eq(i).find('td').eq(3).text());

            var payment                 = parseFloat($scope.invoices[i].payment) || 0;
            var due_amount              = parseFloat($scope.invoices[i].due_amount) || 0;
            var vat_des                 = parseFloat($scope.invoices[i].vat_des) || 0;
            var tax_des                 = parseFloat($scope.invoices[i].tax_des) || 0;
            var other_des               = parseFloat($scope.invoices[i].other_des) || 0;

            var trow_due_amount         = payment + due_amount + vat_des + tax_des + other_des;

            var trow_vat_amount         = parseFloat($('.uk-table > tbody > tr').eq(i).find('.payment_vat_adjust_des').val())||0;
            var trow_tax_amount         = parseFloat($('.uk-table > tbody > tr').eq(i).find('.payment_tax_adjust_des').val())||0;
            var trow_other_amount       = parseFloat($('.uk-table > tbody > tr').eq(i).find('.payment_other_adjust_des').val())||0;

            var net_amount              = trow_due_amount - (trow_vat_amount + trow_tax_amount + trow_other_amount);

              //console.log("net_amount : "+net_amount+"trow_due_amount : "+trow_due_amount+"tem_due:"+tem_due+"trow_vat_amount: "+trow_vat_amount+"trow_tax_amount: "+trow_tax_amount+" trow_other_amount: "+trow_other_amount);

            if(received_amount <= net_amount)
            {
                //payment
                $scope.invoice_amount[i]    = received_amount;
                received_amount             = received_amount - $scope.invoice_amount[i];
                //due amount 
                $('.uk-table > tbody > tr').eq(i).find('td').eq(3).text(net_amount - $scope.invoice_amount[i]);
            }else{
                //payment
                $scope.invoice_amount[i]    = net_amount;
                received_amount             = received_amount - $scope.invoice_amount[i];
                //due amount
                $('.uk-table > tbody > tr').eq(i).find('td').eq(3).text(net_amount - $scope.invoice_amount[i]);
            }

        }


        var pay_sum             = 0;
        var excess_balance_pay  = 0;
        var payment_adjustment  = $("#amount").val();

        if(typeof payment_adjustment == "undefined" || payment_adjustment == '')
        {
            payment_adjustment = 0;
        }
        else
        {
            payment_adjustment = parseFloat(payment_adjustment).toFixed(2);
        }

        for(var i = 0; i < $scope.invoices.length; i++){

            pay_sum = pay_sum + $scope.invoice_amount[i];
        }

        payment_adjustment = parseFloat(payment_adjustment).toFixed(2);
        excess_balance_pay = payment_adjustment-parseFloat(pay_sum).toFixed(2);

        $scope.amount_received  = parseFloat(payment_adjustment).toFixed(2) || 0;
        $scope.used_amount      = parseFloat(pay_sum).toFixed(2) || 0;
        $scope.excess_amount    = parseFloat(excess_balance_pay).toFixed(2) || 0;
    }

    $scope.infinitycheck = function(value) {

        return Math.abs(value);
    }

    $scope.vat = function () {

        $scope.advanceAmount();
    }

    $scope.advanceAmount = function(){

        $(".uk-table tbody").find('tr').each(function(index) {
            var trow_due_amount= parseFloat($scope.invoices[index].payment)+parseFloat($scope.invoices[index].due_amount)+parseFloat($scope.invoices[index].vat_des)+parseFloat($scope.invoices[index].tax_des)+parseFloat($scope.invoices[index].other_des);

            // $(this).find("td").eq(3).text($scope.invoices[i].due_amount);
            //$(this).find("td").eq(3).text(trow_due_amount);
            $(this).find("td").eq(3).text(0);
        });

        var rowCount = $('.uk-table >tbody >tr').length;
        var amount = $("input#amount").val();

        var vat_adjustment = parseFloat($("input#vat_adjust").val())||0;
        var tax_adjust = parseFloat($("input#tax_adjust").val())||0;
        var other_adjust = parseFloat($("input#other_adjust").val())||0;

        var vat_adjustment_amount = (vat_adjustment/rowCount).toPrecision(4);
        var tax_adjustment_amount = (tax_adjust/rowCount).toPrecision(4);
        var other_adjustment_amount = (other_adjust/rowCount).toPrecision(4);


        $(".uk-table tbody").find('tr').each(function(i) {

            $(this).find("input.payment_vat_adjust_des").val(vat_adjustment_amount);
            var row_due_amount = parseFloat($(this).find("td").eq(3).text());
            var row_vat_adjustment = parseFloat($(this).find("input.payment_vat_adjust_des").val());

            // vat
            if((row_due_amount<row_vat_adjustment))
            {
                //$(this).find("input.payment_vat_adjust_des").val(row_due_amount);
                $(this).find("input.payment_vat_adjust_des").val(0);
            }

            var vat_result= row_due_amount-parseFloat($(this).find("input.payment_vat_adjust_des").val()).toFixed(2);
            //$(this).find("td").eq(3).text(vat_result);
            $(this).find("td").eq(3).text(0);
            vat_adjustment -= parseFloat($(this).find("input.payment_vat_adjust_des").val());

            //tax
            //$(this).find("input.payment_tax_adjust_des").val(tax_adjustment_amount);
            $(this).find("input.payment_tax_adjust_des").val(0);
            row_due_amount = parseFloat($(this).find("td").eq(3).text());
            var row_tax_adjust_des = parseFloat($(this).find("input.payment_tax_adjust_des").val());


            if((row_due_amount<row_tax_adjust_des))
            {
                //$(this).find("input.payment_tax_adjust_des").val(row_due_amount);
                $(this).find("input.payment_tax_adjust_des").val(0);
            }
            var tax_result = (row_due_amount-parseFloat($(this).find("input.payment_tax_adjust_des").val())).toFixed(2);
            //$(this).find("td").eq(3).text(tax_result);
            $(this).find("td").eq(3).text(0);
            tax_adjust -= parseFloat($(this).find("input.payment_tax_adjust_des").val());


            //other

            //$(this).find("input.payment_other_adjust_des").val(other_adjustment_amount);
            $(this).find("input.payment_other_adjust_des").val(0);
            row_due_amount = parseFloat($(this).find("td").eq(3).text());
            var row_other_adjust_des = parseFloat($(this).find("input.payment_other_adjust_des").val());

            if((row_due_amount<row_other_adjust_des))
            {
                //$(this).find("input.payment_other_adjust_des").val(row_due_amount);
                $(this).find("input.payment_other_adjust_des").val(0);


            }
            var other_result = (row_due_amount-parseFloat($(this).find("input.payment_other_adjust_des").val())).toFixed(2);
            //$(this).find("td").eq(3).text(other_result);
            $(this).find("td").eq(3).text(0);
            other_adjust -= parseFloat($(this).find("input.payment_other_adjust_des").val());




        });


        if(vat_adjustment!=0)
        {
            $scope.vatadjustbool = true;
        }else{
            $scope.vatadjustbool = false;
        }

        if(tax_adjust!=0)
        {
            $scope.taxadjustbool = true;
        }else{
            $scope.taxadjustbool = false;
        }

        if(other_adjust!=0)
        {
            $scope.otheradjustbool = true;
        }else{
            $scope.otheradjustbool = false;
        }
        $scope.successMessagebool = false;

        $scope.amountReceived();
    }

    $scope.tax = function () {

        $scope.advanceAmount();
    }

    $scope.other = function () {

        $scope.advanceAmount();
    }

    $scope.calculateAdjustmentPayment =  function (index) {
        var payment_adjustment = $scope.amount||0;

        var tem_due = parseFloat($('.uk-table > tbody > tr').eq(index).find('td').eq(3).text());
        var trow_vat_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val())||0;
        var trow_tax_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val())||0;
        var trow_other_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val())||0;
        var trow_due_amount= parseFloat($scope.invoices[index].payment)+parseFloat($scope.invoices[index].due_amount)+parseFloat($scope.invoices[index].vat_des)+parseFloat($scope.invoices[index].tax_des)+parseFloat($scope.invoices[index].other_des);

        var par_amount = 0;
        // par_amount= trow_vat_amount+(trow_tax_amount+trow_vat_amount+parseFloat($scope.invoice_amount[index]));
        var pay_sum = 0;

        $(".uk-table tbody").find('input.payment_original_adjust_des').each(function(i) {

            if(i!=index)
            {
                pay_sum = pay_sum+parseFloat($(this).val());
            }
        });

        var pay_left = parseFloat(payment_adjustment) - pay_sum;
        var net_due_amo =trow_due_amount-(trow_vat_amount+trow_tax_amount+trow_other_amount);

        if(pay_left>=parseFloat($scope.invoice_amount[index]) && parseFloat($scope.invoice_amount[index])<=net_due_amo)
        {

            $('.uk-table > tbody > tr').eq(index).find('.payment_original_adjust_des').val($scope.invoice_amount[index]);
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-$scope.invoice_amount[index]).toFixed(2));

        }else if(pay_left<parseFloat($scope.invoice_amount[index])){

            $('.uk-table > tbody > tr').eq(index).find('.payment_original_adjust_des').val(parseFloat(pay_left).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-pay_left).toFixed(2));

        }else if(parseFloat($scope.invoice_amount[index])>net_due_amo){

            $('.uk-table > tbody > tr').eq(index).find('.payment_original_adjust_des').val(parseFloat(net_due_amo).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-net_due_amo).toFixed(2));
        }


       $scope.calculateExcessPaymentAmount();
    }

    $scope.calculateExcessPayment = function (index) {


        var total_balance = 0;
        var exceed_amount = 0;

        for(var i = 0; i < $scope.invoices.length; i++)
        {
            if(!parseFloat($scope.invoice_amount[i]))
                continue;

            if(!parseFloat($scope.amount))
            {
                $scope.invoice_amount[i] = 0;
                alert("Please Enter Amount");
                continue;
            }

            if(!parseFloat($scope.payment_receive_adjustment[i]))
                $scope.payment_receive_adjustment[i] = 0;


            if((parseFloat($scope.invoice_amount[i]) + parseFloat($scope.payment_receive_adjustment[i])) > $scope.invoices[i].due_amount)
            {
                $scope.invoice_amount[i] = parseFloat($scope.invoices[i].due_amount) - parseFloat($scope.payment_receive_adjustment[i]);
            }

            total_balance = total_balance + parseFloat($scope.invoice_amount[i]);

            if(total_balance > $scope.amount)
            {
                exceed_amount                   = total_balance - $scope.amount;
                total_balance                   = total_balance - parseFloat($scope.invoice_amount[i]);
                $scope.invoice_amount[index]    = (parseFloat($scope.invoice_amount[index]) - exceed_amount - parseFloat($scope.payment_receive_adjustment[i]));
                total_balance                   = total_balance + parseFloat($scope.invoice_amount[i]);
            }

            $scope.used_amount                  = total_balance - exceed_amount;
            total_balance                       = total_balance - exceed_amount;
            $scope.excess_amount                = (parseFloat($scope.amount) - parseFloat($scope.used_amount));
        }

        //adjustment
        //$scope.payment_receive_adjustment[index] = 0;
    }

    $scope.calculateAdjustment = function (index) {

        var vat_adjustment = parseFloat($("input#vat_adjust").val())||0;

        var tem_due = parseFloat($('.uk-table > tbody > tr').eq(index).find('td').eq(3).text()) || 0;
        // var trow_due_amount= parseFloat($scope.invoices[index].due_amount);
        var trow_vat_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val())||0;
        var trow_tax_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val())||0;
        var trow_other_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val())||0;


        var payment         = parseFloat($scope.invoices[index].payment) || 0;
        var due_amount      = parseFloat($scope.invoices[index].due_amount) || 0;
        var vat_des         = parseFloat($scope.invoices[index].vat_des) || 0;
        var tax_des         = parseFloat($scope.invoices[index].tax_des) || 0;
        var other_des       = parseFloat($scope.invoices[index].other_des) || 0;

        var trow_due_amount= payment + due_amount + vat_des + tax_des + other_des;

        var par_amount = 0;
        par_amount= trow_vat_amount+(trow_tax_amount+trow_other_amount+parseFloat($scope.invoice_amount[index]));
        var vat_sum = 0;
        $(".uk-table tbody").find('input.payment_vat_adjust_des').each(function(i) {
            if(i!=index)
            {
                vat_sum = vat_sum+parseFloat($(this).val());
            }
        });
        var net_due_amo=0;
        var vat_left = vat_adjustment - vat_sum;
        net_due_amo =trow_due_amount-(trow_tax_amount+trow_other_amount+parseFloat($scope.invoice_amount[index]));
        // console.log("net_due_amo: "+net_due_amo+"vat_left "+vat_left+"vat_adjustment "+vat_adjustment+"trow_due_amount "+trow_due_amount+"trow_vat_amount "+trow_vat_amount+"trow_tax_amount "+trow_tax_amount+"trow_other_amount "+trow_other_amount+"payment "+$scope.invoice_amount[index]);
        if(vat_left>=trow_vat_amount && trow_vat_amount<=net_due_amo)
        {


            $('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val(trow_vat_amount);
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-trow_vat_amount).toFixed(2));


        }else if(vat_left<trow_vat_amount){


            $('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val(parseFloat(vat_left).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-vat_left).toFixed(2));
        }else if(trow_vat_amount>net_due_amo){


            $('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val(parseFloat(net_due_amo).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-net_due_amo).toFixed(2));
        }

        net_due_amo = 0;
        var total_vat=0;
        $(".uk-table tbody").find('input.payment_vat_adjust_des').each(function(i) {
            total_vat=total_vat+parseFloat($(this).val());
        });
        var con = (parseFloat(vat_adjustment).toFixed(2)-parseFloat(total_vat).toFixed(2));
        if(con < 0.0001) {
            $scope.vatadjustbool = false;
        }else{
            $scope.vatadjustbool = true;
        }
    }

    $scope.checkExcessvatAmount =function (index) {
        var vat_sum = 0;
        var vat_adjustment = parseFloat($("input#vat_adjust").val())||0;
        $(".uk-table tbody").find('input.payment_vat_adjust_des').each(function(i) {
            if(i!=index)
            {
                vat_sum = vat_sum+parseFloat($(this).val());
            }
        });
        //
        if((vat_adjustment-vat_sum)<parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val()))
        {
            $('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val(vat_adjustment-vat_sum);
        }
    }

    $scope.calculateAdjustmentTax = function (index) {


        var tax_adjustment = parseFloat($("input#tax_adjust").val())||0;

        var tem_due = parseFloat($('.uk-table > tbody > tr').eq(index).find('td').eq(3).text());
        // var trow_due_amount= parseFloat($scope.invoices[index].due_amount);
        var trow_vat_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val())||0;
        var trow_tax_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val())||0;
        var trow_other_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val())||0;

        var payment         = parseFloat($scope.invoices[index].payment) || 0;
        var due_amount      = parseFloat($scope.invoices[index].due_amount) || 0;
        var vat_des         = parseFloat($scope.invoices[index].vat_des) || 0;
        var tax_des         = parseFloat($scope.invoices[index].tax_des) || 0;
        var other_des       = parseFloat($scope.invoices[index].other_des) || 0;


        var trow_due_amount= payment + due_amount + vat_des + tax_des + other_des;

        var par_amount = 0;
        par_amount= trow_vat_amount+(trow_tax_amount+trow_other_amount+parseFloat($scope.invoice_amount[index]));
        var tax_sum = 0;
        $(".uk-table tbody").find('input.payment_tax_adjust_des').each(function(i) {
            if(i!=index)
            {
                tax_sum = tax_sum+parseFloat($(this).val());
            }
        });

        var tax_left = tax_adjustment - tax_sum;
        var net_due_amo =trow_due_amount-(trow_vat_amount+trow_other_amount+parseFloat($scope.invoice_amount[index]));
        // console.log("net_due_amo:"+net_due_amo);
        if(tax_left>=trow_tax_amount && trow_tax_amount<=net_due_amo)
        {

            $('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val(trow_tax_amount);
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-trow_tax_amount).toFixed(2));


        }else if(tax_left<trow_tax_amount){

            $('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val(parseFloat(tax_left).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-tax_left).toFixed(2));
        }else if(trow_tax_amount>net_due_amo){

            $('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val(parseFloat(net_due_amo).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-net_due_amo).toFixed(2));
        }


        var total_tax=0;
        $(".uk-table tbody").find('input.payment_tax_adjust_des').each(function(i) {
            total_tax=total_tax+parseFloat($(this).val());
        });
        var con = (parseFloat(tax_adjustment).toFixed(2)-parseFloat(total_tax).toFixed(2));
        if(con<0.0001) {
            $scope.taxadjustbool = false;
        }else{
            $scope.taxadjustbool = true;
        }
    }

    $scope.calculateAdjustmentOther = function (index) {

        var other_adjustment = parseFloat($("input#other_adjust").val())||0;

        var tem_due = parseFloat($('.uk-table > tbody > tr').eq(index).find('td').eq(3).text());
        // var trow_due_amount= parseFloat($scope.invoices[index].due_amount);
        var trow_vat_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_vat_adjust_des').val())||0;
        var trow_tax_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_tax_adjust_des').val())||0;
        var trow_other_amount= parseFloat($('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val())||0;

        var payment         = parseFloat($scope.invoices[index].payment) || 0;
        var due_amount      = parseFloat($scope.invoices[index].due_amount) || 0;
        var vat_des         = parseFloat($scope.invoices[index].vat_des) || 0;
        var tax_des         = parseFloat($scope.invoices[index].tax_des) || 0;
        var other_des       = parseFloat($scope.invoices[index].other_des) || 0;


        var trow_due_amount = payment + due_amount + vat_des + tax_des + other_des;

        var par_amount = 0;
        par_amount= trow_due_amount+(trow_tax_amount+trow_vat_amount+parseFloat($scope.invoice_amount[index]));
        var other_sum = 0;
        $(".uk-table tbody").find('input.payment_other_adjust_des').each(function(i) {
            if(i!=index)
            {
                other_sum = other_sum+parseFloat($(this).val());
            }
        });

        var other_left = other_adjustment - other_sum;
        var net_due_amo =trow_due_amount-(trow_vat_amount+trow_tax_amount+parseFloat($scope.invoice_amount[index]));

        if(other_left>=trow_other_amount && trow_other_amount<=net_due_amo)
        {

            $('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val(trow_other_amount);
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-trow_other_amount).toFixed(2));


        }else if(other_left<trow_other_amount){

            $('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val(parseFloat(other_left).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-other_left).toFixed(2));
        }else if(trow_other_amount>net_due_amo){

            $('.uk-table > tbody > tr').eq(index).find('.payment_other_adjust_des').val(parseFloat(net_due_amo).toFixed(2));
            $('.uk-table > tbody > tr').eq(index).find('td').eq(3).text((net_due_amo-net_due_amo).toFixed(2));
        }


        var total_other=0;
        $(".uk-table tbody").find('input.payment_other_adjust_des').each(function(i) {
            total_other=total_other+parseFloat($(this).val());
        });
        var con = (parseFloat(other_adjustment).toFixed(2)-parseFloat(total_other).toFixed(2));
        if(con < 0.0001) {
            $scope.otheradjustbool = false;
        }else{
            $scope.otheradjustbool = true;
        }
    }

}
