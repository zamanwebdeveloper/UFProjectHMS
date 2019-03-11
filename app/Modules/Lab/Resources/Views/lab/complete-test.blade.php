@extends('layouts.main')

@section('title', 'Lab Report')

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
                                <h2 class="heading_b"><span class="uk-text-truncate">Complete Test List</span></h2>
                            </div>
                        </div>

                        <div class="user_content">
                            <div class="uk-overflow-container uk-margin-bottom">
                                <table class="uk-table" cellspacing="0" width="100%" id="data_table">
                                    <thead>
                                        <tr>
                                            <th style="width: 10%;">#</th>
                                            <th style="width: 10%;">Patient ID</th>
                                            <th style="width: 12%;">Name</th>
                                            <th style="width: 12%;">Test Category</th>
                                            <th style="width: 10%;">Status</th>
                                            <th style="width: 15%;">Payment</th>
                                            <th style="width: 12%;">Doctor</th>
                                            <th style="width: 35%;">Action</th>
                                        </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Patient ID</th>
                                            <th>Name</th>
                                            <th>Test Category</th>
                                            <th>Status</th>
                                            <th>Payment</th>
                                            <th>Doctor</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>

                                    <tbody>
                                    @foreach($tests as $key => $test)
                                        <tr>
                                            <td>{{ $key+1 }}</td>
                                            <td>{{ "PID-".$test->patient['serial'] }}</td>
                                            <td>{{ $test->patient['name'] }}</td>
                                            <td>{{ $test->testCategory['name'] }}</td>
                                            @if($test->status == 2)
                                                <td>Complete</td>
                                            @endif
                                            @if($helper->patientBillPaymentStatus($test->patient['id']) == 1)
                                                <td style="color:green;">Paid</td>
                                            @else
                                                <td style="color:red;">Over Due</td>
                                            @endif

                                            <td>{{ $test->doctor->name }}</td>
                                            <td>
                                                @if($helper->patientBillPaymentStatus($test->patient['id']) == 1)
                                                    <a href="{{ route('lab_test_report_complete', $test->id ) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="Report Ready" class="md-icon material-icons">done</i>
                                                    </a>
                                                @else
                                                    <a>
                                                        <i data-uk-tooltip="{pos:'top'}" title="Pay First" class="md-icon material-icons">swap_vert</i>
                                                    </a>
                                                @endif
                                                <a href="{{ route('lab_edit', ['id' => $test->lab_report_id]) }}">
                                                    <i data-uk-tooltip="{pos:'top'}" title="Edit" class="md-icon material-icons">&#xE254;</i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- Add branch plus sign -->

                            {{--<div class="md-fab-wrapper branch-create">
                                <a id="add_branch_button" href="{{ route('prescription_create') }}" class="md-fab md-fab-accent branch-create">
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
        $('#sidebar_lab_complete_test').addClass('act_item');
        $(window).load(function(){
            $("#tiktok_account").trigger('click');
        })

    </script>
@endsection