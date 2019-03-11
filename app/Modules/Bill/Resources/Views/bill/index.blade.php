@extends('layouts.main')

@section('title', 'Bill')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')

    <?php $helper = new \App\Lib\Helpers; ?>

    <div class="uk-grid" data-uk-grid-margin data-uk-grid-match id="user_profile">
        <div class="uk-width-large-10-10">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-large-10-10">

                    @if ($message = Session::get('success'))
                        <div class="alert alert-success alert-block">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                        </div>
                    @endif

                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_avatar fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-preview fileinput-exists thumbnail"></div>
                            </div>
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">All Bill</span></h2>
                            </div>
                        </div>
                        <div class="user_content">
                            <div class="uk-overflow-container uk-margin-bottom">
                                <div class="dt_colVis_buttons"></div>
                                <table class="uk-table" cellspacing="0" width="100%" id="data_table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Date</th>
                                            <th>Patient ID</th>
                                            <th>Patient Name</th>
                                            <th>Amount</th>
                                            <th>Due Amount</th>
                                            <th class="uk-text-center">Action</th>
                                        </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Patient ID</th>
                                        <th>Patient Name</th>
                                        <th>Amount</th>
                                        <th>Due Amount</th>
                                        <th class="uk-text-center">Action</th>
                                    </tr>
                                    </tfoot>

                                    <tbody>
                                    <?php $i = 1; ?>
                                    @foreach($bills as $bill)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{date('d-m-Y', strtotime($bill->due_date)) }}</td>
                                            <td>{{ "PID-".$bill->patient['serial'] }}</td>
                                            <td>{{ $bill->bill_number }}</td>
                                            <td>{{ $bill->amount + $helper->calculateBedCharge($bill->patient_id)  }}</td>
                                            <td>{{ $bill->due_amount + $helper->calculateBedCharge($bill->patient_id)  }}</td>
                                            <td class="uk-text-right" style="white-space:nowrap !important;">
                                                <a href="{!! route('patient_bill_mail_send_view',$bill->patient_id) !!}">
                                                    <i data-uk-tooltip="{pos:'top'}" title="Email" class="material-icons" >&#xE0BE;</i>
                                                </a>
                                                <a href="{{ route('bil_show', ['id' => $bill->id]) }}"><i data-uk-tooltip="{pos:'top'}" title="View" class="material-icons">visibility</i></a>
                                                <a href="{{ route('bill_pay', ['bill_id' => $bill->id, 'patient_id' => $bill->patient_id]) }}"><i data-uk-tooltip="{pos:'top'}" title="Pay Amount" class="material-icons">payment</i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- Add branch plus sign -->

                            {{--<div class="md-fab-wrapper branch-create">
                                <a id="add_branch_button" href="{{ route('doctor_create') }}" class="md-fab md-fab-accent branch-create">
                                    <i class="material-icons">&#xE145;</i>
                                </a>
                            </div>--}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_bill').addClass('act_item');

        $('.delete_btn').click(function () {
            var id = $(this).next('.doctor_id').val();
            swal({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then(function () {
                window.location.href = "/doctor/delete/"+id;
            })
        })
    </script>
@endsection








