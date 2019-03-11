@extends('layouts.main')

@section('title', 'Pay Amount')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')
    <div class="uk-grid">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('prescription_store'), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Pay Bill of Patient {{ $patient->name }}</span></h2>
                            </div>
                        </div>


                        <div class="user_content">
                            <div class="uk-margin-top">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="date">Date<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="date"></label>
                                        <input class="md-input" type="text" id="date" name="date" value="{{ Carbon\Carbon::now()->format('Y-m-d') }}" data-uk-datepicker="{format:'YYYY-MM-DD'}" required>
                                        @if ($errors->has('date'))
                                            <span class="error">
                                                <strong>{{ $errors->first('date') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>



                                <div class="uk-grid" >
                                    <div class="uk-width-medium-1-1">
                                        <table class="uk-table">
                                            <thead>
                                            <tr>
                                                <th class="uk-text-nowrap">Name</th>
                                                <th class="uk-text-nowrap">Total Amount</th>
                                                <th class="uk-text-nowrap">Due Amount</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>
                                                    {{ $bill->amount }}
                                                </td>
                                                <td>
                                                    {{ $bill->due_amount }}
                                                </td>
                                            </tr>
                                            </tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td><strong>Total</strong></td>
                                                <td>
                                                    <input class="md-input" id="totalValue" name="total_value" readonly/>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td><strong>Paid Amount</strong></td>
                                                <td>
                                                    <input oninput="paidAmountFunc()" class="md-input" id="paidAmount" name="paid_amount"/>
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td><strong>Due Amount</strong></td>
                                                <td>
                                                    <input class="md-input" id="dueAmount" name="due_amount" readonly/>
                                                </td>
                                                <td></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="summary">Summary</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <textarea name="summary" id="summary" class="md-input"></textarea>
                                    </div>
                                </div>

                                <div class="uk-grid uk-ma" data-uk-grid-margin>
                                    <div class="uk-width-1-1 uk-float-left">
                                        <button type="submit" class="md-btn md-btn-primary" >Submit</button>
                                        <button type="button" class="md-btn md-btn-flat uk-modal-close">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection
@section('script')
    <script>
        $(document).ready(function() {
            $('.select-search').select2();
        });
    </script>

    <script>
        $("#checkbox_test").on("click",function () {
            $("#testBody").toggle(800);
        });

        $("#checkbox_prescription").on("click",function () {
            $("#prescriptionBody").toggle(800);
        });
    </script>

    <script>
        var i = 0;

        $(".test_category_add_row").click(function () {
            i++;
            $(".show_test_category_row").append('' +
                '<tr class="test_row_'+i+'" >\n' +
                '   <td>\n' +
                '       <select onchange="changeTestCategory('+ i +')" id="test_category_id_'+i+'" class="test_category_list form-control select-search" name="test_category_id[]" required>\n' +
                '           <option selected disabled>Select</option>\n'+
                '           @foreach($test_category as $category)\n' +
                '               <option value="{{ $category->id }}">{{ $category->name }}</option>\n' +
                '           @endforeach\n' +
                '       </select>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <input class="md-input" id="test_name_'+i+'" name="test_name[]" />\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <input class="md-input" id="body_part_'+i+'" name="body_part[]"/>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <input class="md-input amount" id="amount_'+i+'" name="amount[]" readonly/>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <a onclick="deleteTestCategory('+i+')" class="test_category_remove_row"><i class="material-icons md-36">delete</i></a>\n' +
                '   </td>\n' +
                '</tr>' +
                '');
        });


        function changeTestCategory(i) {
            var total_value = 0;

            var test_category_id = $("#test_category_id_"+i+" option:selected").val();

            if(test_category_id){

                $.get('/prescription/test-charge/'+ test_category_id, function(data){
                    $("#amount_"+i).val(data);
                    $(".amount").each(function() {
                        total_value += parseFloat($(this).val());
                    });

                    $("#totalValue").val(total_value);
                    $("#dueAmount").val(total_value);
                });
            }
        }


        function paidAmountFunc() {

            var paid_amount = $("#paidAmount").val();
            var total_value = $("#totalValue").val();
            var due_amount = parseFloat(total_value - paid_amount);

            $("#dueAmount").val(due_amount);

        }

        function deleteTestCategory(index){
            var total_value = 0;
            var amount = $("#amount_"+index).val();
            var due_amount = $("#dueAmount").val();

            $(".amount").each(function() {
                total_value += parseFloat($(this).val());
            });

            total_value     = parseFloat(total_value - amount);
            new_due_amount  = parseFloat(due_amount - amount);

            $("#totalValue").val(total_value);
            $("#dueAmount").val(new_due_amount);

            $(".test_row_"+index).remove();
        }
    </script>

    <script>
        var i = 0;

        $(".add_prescription_row").click(function () {
            i++;
            $(".show_prescription_row").append('' +
                '<tr class="prescription_row_'+ i +'">\n' +
                '   <td><input type="text" class="md-input" name="medicine_name[]" id="medicine_name_'+ i +'" value="{{ old('medicine_name') }}" placeholder="Medicine Name" /></td>\n' +
                '   <td>\n' +
                '      <select class="medicine_type form-control" onchange="selectMedicineType('+ i +')" name="medicine_type[]" id="medicine_type_'+ i +'">\n' +
                '         <option selected disabled>Select</option>\n' +
                '         <option value="1">Tablet</option>\n' +
                '         <option value="2">Capsule</option>\n' +
                '         <option value="3">Injection</option>\n' +
                '         <option value="5">Syrup</option>\n' +
                '      </select>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '     <select id="taking_schedule_'+ i +'" name="taking_schedule[]" class="form-control">\n' +
                '         \n' +
                '      </select>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <input type="text" class="md-input" name="duration[]" id="duration_'+ i +'" value="{{ old('duration') }}"  placeholder="Duration" />\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <input type="text" class="md-input" name="advise[]" id="advise_'+ i +'" value="{{ old('advise') }}"  placeholder="Advise" />\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <a onclick="deletePrescriptionRow('+ i +')" ><i class="material-icons md-36">delete</i></a>\n' +
                '   </td>\n' +
                '</tr>' +
                '');
        });

        //Get Medicine Taking Schedule
        function selectMedicineType(index) {

            var medicine_type_id = $("#medicine_type_"+index+" option:selected").val();

            if(medicine_type_id){

                $.get('/prescription/medicine-taking-schedule/'+ medicine_type_id, function(data){

                    $("#taking_schedule_"+index).empty();
                    $("#taking_schedule_"+index).append('<option selected disabled value="">Select</option>');
                    for(var i =0; i< data.length; i++){
                        $("#taking_schedule_"+index).append( ' <option value="'+data[i].id+'">' + data[i].schedule + '</option> ' );
                    }
                });
            }
        }

        function deletePrescriptionRow(index){
            $(".prescription_row_"+index).remove();
        }
    </script>

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_prescription').addClass('act_item');

        $(window).load(function(){
            $("#tiktok_account").trigger('click');

        })
    </script>

@endsection