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
    <div class="uk-grid">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('doctor_store'), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Create New Doctor</span></h2>
                            </div>
                        </div>


                        <div class="user_content">
                            <div class="uk-margin-top">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="department_id">Department<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="type" name="department_id" required class="md-input search-select" aria-required="true">
                                            <option selected disabled>Select</option>
                                            @foreach($departments as $department)
                                                <option value="{{ $department->id }}">{{ $department->name }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('department_id'))
                                            <span class="error">
                                                <strong>{{ $errors->first('department_id') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="name">Name<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="income_date">Name</label>
                                        <input class="md-input" type="text" id="name" name="name" value="{{ old('name') }}" required>
                                        @if ($errors->has('name'))
                                            <span class="error">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="email">Email<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="income_date">Email</label>
                                        <input class="md-input" type="email" id="email" name="email" value="{{ old('email') }}" required>
                                        @if ($errors->has('email'))
                                            <span class="error">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="mobile">Mobile<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="income_date">Mobile</label>
                                        <input class="md-input" type="text" id="mobile" name="mobile" value="{{ old('mobile') }}" required>
                                        @if ($errors->has('mobile'))
                                            <span class="error">
                                                <strong>{{ $errors->first('mobile') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="degree">Degree</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="age">Degree</label>
                                        <input class="md-input" type="text" id="degree" value="{{ old('degree') }}" name="degree">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="designation">Designation</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="age">Designation</label>
                                        <input class="md-input" type="text" id="designation" value="{{ old('designation') }}" name="designation">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="doctor_type">Doctor Type</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="type" name="doctor_type" required data-md-selectize aria-required="true">
                                            <option value="1">Duty Doctor</option>
                                            <option value="2">Supervised Doctor</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="work_place">Work Place</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="age">Work Place</label>
                                        <input class="md-input" type="text" id="work_place" value="{{ old('work_place') }}" name="work_place">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="specialization">Specialization<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="nid">Specialization</label>
                                        <input class="md-input" type="text" id="nid" name="specialization"  value="{{ old('specialization') }}" required>
                                        @if ($errors->has('specialization'))
                                            <span class="error">
                                                <strong>{{ $errors->first('specialization') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="gender">Gender<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select name="gender" id="gender" required data-md-selectize aria-required="true">
                                            <option value="0">Male</option>
                                            <option value="1">Female</option>
                                        </select>
                                        @if ($errors->has('gender'))
                                            <span class="error">
                                                <strong>{{ $errors->first('gender') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid">
                                    <div class="uk-width-1-2">
                                        <div style=" padding:10px;height: 40px; color: white; background-color: maroon  ">
                                            Add Chamber Days
                                        </div>

                                    </div>
                                    <div class="uk-width-1-2" style="padding: 10px; height: 40px; position:relative;background: maroon  ">
                                        <div id="inv" style="position: absolute; right: 10px; height: 40px; ">
                                            <input type="checkbox" name="checkbox_chamber_days" id="checkbox_chamber_days" style=" margin-top: -1px; height: 25px; width: 20px;">
                                        </div>

                                    </div>
                                </div>

                                <div class="uk-grid" id="chamberSchedule" style="display:none;" >
                                    <div class="uk-width-medium-1-1">
                                        <table class="uk-table">
                                            <thead>
                                                <tr>
                                                    <th class="uk-text-nowrap">Day<span class="req">*</span></th>
                                                    <th class="uk-text-nowrap">Shift<span class="req">*</span></th>
                                                    <th class="uk-text-nowrap">Start Time<span class="req">*</span></th>
                                                    <th class="uk-text-nowrap">End Time<span class="req">*</span></th>
                                                    <th class="uk-text-nowrap">ADD</th>
                                                </tr>
                                            </thead>
                                            <tbody class="show_chamber_row">
                                                <tr class="chamber_row_0">
                                                    <td>
                                                        <select id="day_id_0" name="day_id[]" class="md-input search-select">
                                                            <option selected disabled>Select Day</option>
                                                            @foreach($days as $day)
                                                                <option value="{{ $day->id }}">{{ $day->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <select id="shift_0" name="shift[]" class="md-input search-select">
                                                            <option selected disabled>Select Shift</option>
                                                            <option value="0">Morning</option>
                                                            <option value="1">Evening</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input name="start_time[]" class="md-input" type="text" id="start_time_0" data-uk-timepicker="" autocomplete="off" placeholder="Start Time">
                                                    </td>
                                                    <td>
                                                        <input name="end_time[]" class="md-input" type="text" id="end_time_0" data-uk-timepicker="" autocomplete="off" placeholder="Start Time">
                                                    </td>
                                                    <td>
                                                        <a class="add_chamber_row"><i class="material-icons md-36"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="visit">Visit<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="visit">Specialization</label>
                                        <input class="md-input" type="number" id="visit" name="visit"  value="{{ old('visit') }}" required>
                                        @if ($errors->has('visit'))
                                            <span class="error">
                                                <strong>{{ $errors->first('visit') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="address">Address<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="chamber_time">Address</label>
                                        <textarea class="md-input" id="address" name="address" required></textarea>
                                        @if ($errors->has('address'))
                                            <span class="error">
                                                <strong>{{ $errors->first('address') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="image">File</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <input type="file" name="image" class="md-input">
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
        $("#checkbox_chamber_days").on("click",function () {
            $("#chamberSchedule").toggle(800);
        });


        var i = 0;

        $(".add_chamber_row").click(function () {
            i++;
            $(".show_chamber_row").append('' +
                '<tr class="chamber_row_'+i+'">\n' +
                '  <td>\n' +
                '    <select id="day_id_'+i+'" name="day_id[]" class="md-input search-select">\n' +
                '      <option selected disabled>Select Day</option>\n' +
                '          @foreach($days as $day)\n' +
                '             <option value="{{ $day->id }}">{{ $day->name }}</option>\n' +
                '          @endforeach\n' +
                '    </select>\n' +
                '  </td>\n' +
                '  <td>\n' +
                '     <select id="shift_'+i+'" name="shift[]" class="md-input search-select">\n' +
                '         <option selected disabled>Select Shift</option>\n' +
                '         <option value="0">Morning</option>\n' +
                '         <option value="1">Evening</option>\n' +
                '     </select>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <input name="start_time[]" class="md-input" type="text" id="start_time_'+i+'" data-uk-timepicker="" autocomplete="off" placeholder="Start Time">\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <input name="end_time[]" class="md-input" type="text" id="end_time_0'+i+'" data-uk-timepicker="" autocomplete="off" placeholder="Start Time">\n' +
                '   </td>\n' +
                '   <td>\n' +
                '       <a onclick="deleteRow('+ i +')"><i class="material-icons md-24">delete</i></a>\n' +
                '   </td>\n' +
                ' </tr>\n' +
                '');
        });

        function deleteRow(index){
            $(".chamber_row_"+index).remove();
        }
    </script>

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_doctor').addClass('act_item');
    </script>
@endsection