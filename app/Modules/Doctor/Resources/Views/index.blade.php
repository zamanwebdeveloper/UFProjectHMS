@extends('layouts.main')

@section('title', 'Doctor')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('top_bar')
    <div id="top_bar">
        <div class="md-top-bar">
            <ul id="menu_top" class="uk-clearfix">
                <li data-uk-dropdown class="uk-hidden-small">
                    <a target="_blank" href="{{ route('department_index') }}"><i class="material-icons">&#xE02E;</i><span>Department</span></a>
                </li>
            </ul>
        </div>
    </div>
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
                                <h2 class="heading_b"><span class="uk-text-truncate">All Doctors</span></h2>
                            </div>
                        </div>
                        <div class="user_content">
                            <div class="uk-overflow-container uk-margin-bottom">
                                <div class="dt_colVis_buttons"></div>
                                <table class="uk-table" cellspacing="0" width="100%" id="data_table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Department</th>
                                            <th>Name</th>
                                            <th>Specialist</th>
                                            <th>Degree</th>
                                            <th class="uk-text-center">Action</th>
                                        </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Department</th>
                                            <th>Name</th>
                                            <th>Specialist</th>
                                            <th>Degree</th>
                                            <th class="uk-text-center">Action</th>
                                        </tr>
                                    </tfoot>

                                    <tbody>
                                        @foreach($doctors as $key=>$doctor)
                                            <tr>
                                                <td>{{ $key+1 }}</td>
                                                <td>{{ $doctor->department->name }}</td>
                                                <td>{{ $doctor->name }}</td>
                                                <td>{{ $doctor->specialization }}</td>
                                                <td>{{ $doctor->degree }}</td>
                                                <td>
                                                    {{--<a href="{{ route('doctor_show', ['id' => $doctor->id]) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="Show" class="md-icon material-icons">visibility</i>
                                                    </a>--}}
                                                    <a href="{{ route('doctor_edit', ['id' => $doctor->id]) }}">
                                                        <i data-uk-tooltip="{pos:'top'}" title="Edit" class="md-icon material-icons">&#xE254;</i>
                                                    </a>
                                                    <a class="delete_btn"><i data-uk-tooltip="{pos:'top'}" title="Delete" class="md-icon material-icons">&#xE872;</i></a>
                                                    <input type="hidden" class="doctor_id" value="{{ $doctor->id }}">
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- Add branch plus sign -->

                            <div class="md-fab-wrapper branch-create">
                                <a id="add_branch_button" href="{{ route('doctor_create') }}" class="md-fab md-fab-accent branch-create">
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
        $(document).ready( function () {
            $('#myTable').DataTable();
        });
    </script>

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_doctor').addClass('act_item');

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