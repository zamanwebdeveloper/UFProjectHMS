@extends('layouts.main')

@section('title', 'Test')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection


@section('content')
    <div class="uk-grid">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('test_store'), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Create New Test</span></h2>
                            </div>
                        </div>


                        <div class="user_content">
                            <div class="uk-margin-top">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="patient_id">Patient<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="patient_id" name="patient_id" class="select-search md-input" required >
                                            <option selected disabled>Select</option>
                                            @foreach($patients as $patient)
                                                <option value="{{ $patient->id }}" @if($patient->id == $patient->id) selected @endif>{{ "PID-".$patient->serial." ".$patient->name }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('patient_id'))
                                            <span class="error">
                                                <strong>{{ $errors->first('patient_id') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="doctor_id">Doctor<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="doctor_id" name="doctor_id" class="select-search md-input" required >
                                            <option selected disabled>Select</option>
                                            @foreach($doctors as $doctor)
                                                <option value="{{ $doctor->id }}">{{ $doctor->name }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('doctor_id'))
                                            <span class="error">
                                                <strong>{{ $errors->first('doctor_id') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="prescription_id">Assign to Prescription</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="prescription_id" name="prescription_id" class="select-search md-input" required >
                                            <option selected disabled>Select</option>
                                            @foreach($prescriptions as $prescription)
                                                <option value="{{ $prescription->id }}">{{ $prescription->date }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="uk-grid">
                                    <div class="uk-width-1-2">
                                        <div style=" padding:10px;height: 40px; color: white; background-color: maroon">
                                            Take Test
                                        </div>

                                    </div>
                                    <div class="uk-width-1-2" style="padding: 10px; height: 40px; position:relative;background: maroon ">
                                        <div id="inv" style="position: absolute; right: 10px; height: 40px; ">
                                            <input type="checkbox" name="checkbox_test" id="checkbox_test" style=" margin-top: -1px; height: 25px; width: 20px;">
                                        </div>

                                    </div>
                                </div>

                                <div class="uk-grid" id="testBody" style="display:none;" >
                                    <div class="uk-width-medium-1-1">
                                        <table class="uk-table">
                                            <thead>
                                            <tr>
                                                <th class="uk-text-nowrap">Test Category</th>
                                                <th class="uk-text-nowrap">Test Name</th>
                                                <th class="uk-text-nowrap">Body Part</th>
                                                <th class="uk-text-nowrap">Amount</th>
                                                <th class="uk-text-nowrap">Action</th>
                                            </tr>
                                            </thead>
                                            <tbody class="show_test_category_row">
                                            <tr class="test_row_0">
                                                <td>
                                                    <select onchange="changeTestCategory(0)" id="test_category_id_0" class="test_category_list form-control select-search" name="test_category_id[0]" required>
                                                        <option selected disabled>Select</option>
                                                        @foreach($test_category as $category)
                                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <input class="md-input" id="test_name_0" name="test_name[]" />
                                                </td>
                                                <td>
                                                    <input class="md-input" id="body_part_0" name="body_part[]"/>
                                                </td>
                                                <td>
                                                    <input class="md-input amount" id="amount_0" name="amount[]" readonly/>
                                                </td>
                                                <td>
                                                    <a class="test_category_add_row" ><i class="material-icons md-36">&#xE146;</i></a>
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

@endsection