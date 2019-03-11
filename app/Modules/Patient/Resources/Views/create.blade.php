@extends('layouts.main')

@section('title', 'Patient')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')
    <div class="uk-grid" ng-app="patientApp" ng-controller="PatientController">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('patient_store'), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Create New Patient</span></h2>
                            </div>
                        </div>

                        <div class="user_content">
                            <div class="uk-margin-top">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="name">Patient ID<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <input class="md-input" type="text" id="serial" name="serial" value="{{ $patient_id }}" required readonly>
                                        @if ($errors->has('serial'))
                                            <span class="error">
                                                <strong>{{ $errors->first('serial') }}</strong>
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
                                        <label class="uk-vertical-align-middle" for="age">Age<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="age">Age</label>
                                        <input class="md-input" type="number" id="age" name="age" required>
                                        @if ($errors->has('age'))
                                            <span class="error">
                                                <strong>{{ $errors->first('age') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="gender">Gender<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <select id="type" name="gender" class="form-control" required>
                                            <option selected disabled>Select</option>
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

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-2">
                                        <label for="weight">Blood Pressure<span class="req">*</span></label>
                                        <input class="md-input label-fixed" type="text" id="blood_pressure" name="blood_pressure" value="{{ old('blood_pressure') }}" required>
                                        @if ($errors->has('blood_pressure'))
                                            <span class="error">
                                                <strong>{{ $errors->first('blood_pressure') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="uk-width-medium-1-2">
                                        <label for="weight">Weight<span class="req">*</span></label>
                                        <input class="md-input label-fixed" type="number" id="weight" name="weight">
                                        @if ($errors->has('weight'))
                                            <span class="error">
                                                <strong>{{ $errors->first('weight') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-3  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="problem">Problem<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-3">
                                        <label for="problem">Problem<span class="req">*</span></label>
                                        <textarea class="md-input label-fixed" id="problem" name="problem" value="{{ old('problem') }}" required></textarea>
                                        @if ($errors->has('problem'))
                                            <span class="error">
                                                <strong>{{ $errors->first('problem') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-3  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="supervise_doctor_id">Supervise Doctor<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-3">
                                        <select id="type" name="supervise_doctor_id" class="form-control" required>
                                            <option selected disabled>Select</option>
                                            @foreach($supervised_doctors as $doctor)
                                                <option value="{{ $doctor->id }}">{{ $doctor->name }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('supervise_doctor_id'))
                                            <span class="error">
                                                <strong>{{ $errors->first('supervise_doctor_id') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid">
                                    <div class="uk-width-1-2">
                                        <div style=" padding:10px;height: 40px; color: white; background-color: #7cb342 ">
                                            Click to Confirm Admit
                                        </div>

                                    </div>
                                    <div class="uk-width-1-2" style="padding: 10px; height: 40px; position:relative;background: #7cb342 ">
                                        <div id="inv" style="position: absolute; right: 10px; height: 40px; ">
                                            <input type="checkbox" name="admit_status" value="1" id="admit_status" style=" margin-top: -1px; height: 25px; width: 20px;">
                                        </div>

                                    </div>
                                </div>

                                <div class="uk-grid" id="admitContentBody" style="display:none;" >
                                    <div class="uk-width-medium-1-1">

                                        <div class="uk-grid" data-uk-grid-margin>
                                            <div class="uk-width-medium-1-2">
                                                <select id="ward_id" name="ward_id" class="form-control" required>
                                                    <option selected disabled="">Select Ward</option>
                                                    @foreach($wards as $ward)
                                                        <option value="{{ $ward->id }}">{{ "Ward No - ".$ward->ward_no }}</option>
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('ward_id'))
                                                    <span class="error">
                                                        <strong>{{ $errors->first('ward_id') }}</strong>
                                                    </span>
                                                @endif
                                            </div>

                                            <div class="uk-width-medium-1-2">
                                                <select id="bed_id" name="bed_id" class="form-control" required>

                                                </select>
                                                @if ($errors->has('bed_id'))
                                                    <span class="error">
                                                        <strong>{{ $errors->first('bed_id') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>

                                        <div class="uk-grid" data-uk-grid-margin>

                                            <div class="uk-width-medium-1-2">
                                                <label for="weight">Admission Date</label>
                                                <input class="md-input" type="text" id="admission_date" name="admission_date" value="{{ Carbon\Carbon::now()->format('Y-m-d') }}" data-uk-datepicker="{format:'YYYY-MM-DD'}" required readonly>
                                                @if ($errors->has('admission_date'))
                                                    <span class="error">
                                                        <strong>{{ $errors->first('admission_date') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="uk-grid">
                                    <div class="uk-width-1-2">
                                        <div style=" padding:10px;height: 40px; color: white; background-color: maroon  ">
                                            Patient Current Status
                                        </div>

                                    </div>
                                    <div class="uk-width-1-2" style="padding: 10px; height: 40px; position:relative;background: maroon  ">
                                        <div id="inv" style="position: absolute; right: 10px; height: 40px; ">
                                            <input type="checkbox" name="checkbox_patient_status" id="checkbox_patient_status" style=" margin-top: -1px; height: 25px; width: 20px;">
                                        </div>

                                    </div>
                                </div>

                                <div class="uk-grid" id="patientStatusBody" style="display:none;" >
                                    <div class="uk-width-medium-1-1">

                                        <table class="uk-table">
                                            <thead>
                                            <tr>
                                                <th class="uk-text-nowrap">Symptom</th>
                                                <th class="uk-text-nowrap">Status</th>
                                                <th class="uk-text-nowrap">Doctor</th>
                                                <th class="uk-text-nowrap">Action</th>
                                            </tr>
                                            </thead>
                                            <tbody class="show_patient_status_row">
                                                <tr class="patient_status_row_0">
                                                <td>
                                                    <input class="md-input" name="symptom[]" id="symptom_0" value="{{ old('symptom') }}" placeholder="New Symptom" />
                                                </td>
                                                <td>
                                                    <input class="md-input" name="status[]" id="status_0" value="{{ old('status') }}" placeholder="Status" />
                                                </td>
                                                <td>
                                                    <select id="doctor_id_0" name="doctor_id[]" class="form-control" required>
                                                        <option selected disabled>Select</option>
                                                        @foreach($supervised_doctors as $doctor)
                                                            <option value="6{{ $doctor->id }}">{{ $doctor->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <a class="add_patient_status_row" ><i class="material-icons md-36">&#xE146;</i></a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-5  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="email">Email</label>
                                    </div>
                                    <div class="uk-width-medium-2-5">
                                        <label for="email">Email</label>
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
                                        <label for="mobile">Mobile</label>
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
                                        <label class="uk-vertical-align-middle" for="image">Image</label>
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
        $("#admit_status").on("click",function () {
            $("#admitContentBody").toggle(800);
        });

        $("#checkbox_patient_status").on("click",function () {
            $("#patientStatusBody").toggle(800);
        });
    </script>

    <script>
        //Get product by select company
        $('#ward_id').change(function() {
            var ward_id = $("#ward_id option:selected").val();
            if(ward_id){
                $.get('/patient/get-bed/'+ ward_id, function(data){
                    $('#bed_id').empty();
                    $('#bed_id').append('<option selected disabled value="">Select</option>');
                    for(var i =0; i< data.length; i++){
                        $('#bed_id').append( ' <option value="'+data[i].id+'">'+'Bed No - '+data[i].bed_no+'</option> ' );
                    }
                });
            }
        });
    </script>

    <script>

        var i = 0;

        $(".add_patient_status_row").click(function () {
            i++;
            $(".show_patient_status_row").append('' +
                '<tr class="patient_status_row_'+ i +'">\n' +
                '   <td>\n' +
                '      <input class="md-input" name="symptom[]" id="symptom_'+ i +'" value="{{ old('symptom') }}" placeholder="New Symptom" />\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <input class="md-input" name="status[]" id="status_'+ i +'" value="{{ old('status') }}" placeholder="Status" />\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <select id="doctor_id_'+ i +'" name="doctor_id[]"  class="form-control" required>\n' +
                '         <option selected disabled>Select</option>\n' +
                '         @foreach($supervised_doctors as $doctor)\n' +
                '             <option value="6{{ $doctor->id }}">{{ $doctor->name }}</option>\n' +
                '          @endforeach\n' +
                '       </select>\n' +
                '   </td>\n' +
                '   <td>\n' +
                '      <a class="add_patient_status_row" onclick="deletePatientStatus('+ i +')" ><i class="material-icons md-36">delete</i></a>\n' +
                '   </td>\n' +
                ' </tr>\n' +
            '');
        });

        function deletePatientStatus(index){
            $(".patient_status_row_"+index).remove();
        }
    </script>

    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_patient').addClass('act_item');
        $(window).load(function(){
            $("#tiktok_account").trigger('click');
        })
    </script>

    <script src="{{ url('bower_components/ckeditor/ckeditor.js') }}"></script>
@endsection