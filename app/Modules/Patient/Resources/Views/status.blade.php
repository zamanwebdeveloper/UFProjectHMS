@extends('layouts.main')

@section('title', 'Status')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')
    <div class="uk-grid">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('patient_status', $patient->id), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Create New Status</span></h2>
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

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="patient_id">Patient<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
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
                                                        @foreach($doctors as $doctor)
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

        $("#checkbox_patient_status").on("click",function () {
            $("#patientStatusBody").toggle(800);
        });

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
                '         @foreach($doctors as $doctor)\n' +
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
        $('#sidebar_prescription').addClass('act_item');

        $(window).load(function(){
            $("#tiktok_account").trigger('click');

        })
    </script>

@endsection