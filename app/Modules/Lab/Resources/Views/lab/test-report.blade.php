@extends('layouts.main')

@section('title', 'Lab Report')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection


@section('content')
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
                                <h2 class="heading_b"><span class="uk-text-truncate">Test Report List</span></h2>
                            </div>
                        </div>

                        <div class="user_content">
                            <div class="uk-overflow-container uk-margin-bottom">

                                <table class="uk-table" cellspacing="0" width="100%" id="data_table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Patient ID</th>
                                        <th>Name</th>
                                        <th>Test Category</th>
                                        <th>Status</th>
                                        <th>Doctor</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>

                                    <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Patient ID</th>
                                        <th>Name</th>
                                        <th>Test Category</th>
                                        <th>Status</th>
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
                                            @if($test->status == 3)
                                                <td>Report Ready</td>
                                            @endif

                                            <td>{{ $test->doctor['name'] }}</td>
                                            <td>
                                                <a href="{{ route('lab_test_report_show', ['id' => $test->id]) }}">
                                                    <i data-uk-tooltip="{pos:'top'}" title="View" class="md-icon material-icons">visibility</i>
                                                </a>
                                                <a href=""><i class="material-icons">&#xE0BE;</i></a>
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
        $('#sidebar_lab_test_report').addClass('act_item');
        $(window).load(function(){
            $("#tiktok_account").trigger('click');
        })

    </script>
@endsection