@extends('layouts.main')

@section('title', 'Bill')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')
    <div class="uk-grid" ng-app="patientApp" ng-controller="PatientController">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('bill_update', $bill->id), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Pay Due Amount</span></h2>
                            </div>
                        </div>

                        <div class="user_content">
                            <div class="uk-margin-top">

                                <input type="hidden" name="patient_id" value="{{ $patient_id }}">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="name">Total Amount</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <input class="md-input label-fixed" type="text" id="total_amount" name="total_amount" value="{{ $bill->amount }}" readonly>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="name">Due Amount</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <input class="md-input label-fixed" type="text" id="due_amount" name="due_amount" value="{{ $bill->due_amount }}" readonly>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="name">Paid Amount</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <input class="md-input label-fixed" type="text" id="paid_amount" name="paid_amount" value="" required>
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
        var total_amount    = parseFloat($("#total_amount").val());
        var due_amount      = parseFloat($("#due_amount").val());

        $("#paid_amount").on('input',function(){

            var paid_amount = parseFloat($(this).val());
            if(paid_amount > due_amount){
                $("#paid_amount").val(due_amount);
            }
        });


    </script>

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_bill').addClass('act_item');
    </script>
@endsection