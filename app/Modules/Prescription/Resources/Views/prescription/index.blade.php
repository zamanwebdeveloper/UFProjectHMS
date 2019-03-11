@extends('layouts.main')

@section('title', 'Prescription')

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
                                <h2 class="heading_b"><span class="uk-text-truncate">All Prescription</span></h2>
                            </div>
                        </div>
                        <div class="user_content">
                            <div class="uk-overflow-container uk-margin-bottom">
                                <table class="uk-table" cellspacing="0" width="100%" id="data_table">
                                    <thead>
                                        <tr>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Patient ID</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Patient ID</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>

                                    <tbody>
                                        @foreach($prescriptions as $key=>$prescription)
                                            <tr>
                                                <td>{{ $key+1 }}</td>
                                                <td>{{ $prescription->date }}</td>
                                                <td>{{ "PID-".$prescription->patient->serial }}</td>
                                                <td>{{ $prescription->patient->name }}</td>
                                                @if($prescription->patient->admit_status == 1)
                                                    <td>Admitted</td>
                                                @elseif($prescription->patient->admit_status == 2)
                                                    <td>Discharged</td>
                                                @else
                                                    <td>Not Admitted</td>
                                                @endif
                                                <td>
                                                    <a href="{{ route('prescription_create', ['patient_id' => $prescription->patient_id]) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="New Prescription" class="md-icon material-icons">&#xE145;</i>
                                                    </a>
                                                    <a href="{{ route('prescription_show', ['id' => $prescription->id]) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="View" class="md-icon material-icons">visibility</i>
                                                    </a>
                                                    {{--<a href="{{ route('prescription_edit', ['id' => $prescription->id]) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="Edit" class="md-icon material-icons">&#xE254;</i>
                                                    </a>--}}
                                                    {{--<a class="delete_btn"><i data-uk-tooltip="{pos:'top'}" title="Delete" class="md-icon material-icons">&#xE872;</i></a>
                                                    <input type="hidden" class="stuff_id" value="{{ $prescription->id }}">--}}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- Add branch plus sign -->

                            <div class="md-fab-wrapper branch-create">
                                <a id="add_branch_button" href="{{ route('prescription_create') }}" class="md-fab md-fab-accent branch-create">
                                    <i class="material-icons">&#xE145;</i>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')


    <script>
        $(document).ready(function () {
            $("#patient_id").select2();
        });

        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_prescription').addClass('act_item');

        $(window).load(function(){
            $("#tiktok_account").trigger('click');

        })

        $('.delete_btn').click(function () {
            var id = $(this).next('.stuff_id').val();

            $('.delete_btn').click(function () {
                var id = $(this).next('.invoice_id').val();
                swal({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this! If you delete this invoice all record will be deleted related to this invoice",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then(function () {
                    window.location.href = "/prescription/delete/"+id;
                })
            })
        })

    </script>
@endsection