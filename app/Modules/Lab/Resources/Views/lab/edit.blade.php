@extends('layouts.main')

@section('title', 'Lab Report')

@section('header')
    @include('inc.header')
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')
    <div class="uk-grid">
        <div class="uk-width-large-10-10">
            {!! Form::open(['url' => route('lab_update', $lab_report->id), 'method' => 'POST', 'class' => 'user_edit_form', 'id' => 'my_profile', 'files' => 'true', 'enctype' => "multipart/form-data", 'novalidate']) !!}
            <div class="uk-grid uk-grid-medium" data-uk-grid-margin>
                <div class="uk-width-xLarge-10-10 uk-width-large-10-10">
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_content">
                                <h2 class="heading_b"><span class="uk-text-truncate">Update Lab Report Information</span></h2>
                            </div>
                        </div>

                        <div class="user_content">
                            <div class="uk-margin-top">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="report_no">Report No<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="report_no">Report No</label>
                                        <input class="md-input" type="text" id="report_no" name="report_no" value="{{ "RENO-".$lab_report->report_no }}" required readonly>
                                        @if ($errors->has('report_no'))
                                            <span class="error">
                                                <strong>{{ $errors->first('report_no') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <input type="hidden" name="test_id" value="{{ $test->id }}">
                                <input type="hidden" name="test_category_id" value="{{ $test->test_category_id }}">

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="taking_date">Taking Date<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="taking_date"></label>
                                        <input class="md-input" type="text" id="taking_date" name="taking_date" value="{{ date("Y-m-d", strtotime($lab_report->taking_date)) }}" data-uk-datepicker="{format:'YYYY-MM-DD'}" required>
                                        @if ($errors->has('taking_date'))
                                            <span class="error">
                                                <strong>{{ $errors->first('taking_date') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="delivery_date">Delivery Date<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="delivery_date"></label>
                                        <input class="md-input" type="text" id="delivery_date" name="delivery_date" value="{{ date("Y-m-d", strtotime($lab_report->delivery_date)) }}" data-uk-datepicker="{format:'YYYY-MM-DD'}" required>
                                        @if ($errors->has('delivery_date'))
                                            <span class="error">
                                                <strong>{{ $errors->first('delivery_date') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="patient_id">Pathologist<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <select id="pathologist_id" name="pathologist_id" class="md-input search-select" required >
                                            <option selected disabled>Select</option>
                                            @foreach($pathologists as $pathologist)
                                                <option value="{{ $pathologist->id }}" @if($pathologist->id == $lab_report->pathologist_id) selected @endif>{{ $pathologist->name }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('pathologist_id'))
                                            <span class="error">
                                                <strong>{{ $errors->first('pathologist_id') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6 uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="reference_doctor_id">Reference Doctor</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <select id="reference_doctor_id" name="reference_doctor_id" class="search-select md-input">
                                            <option selected disabled>Select</option>
                                            @foreach($doctors as $doctor)
                                                <option value="{{ $doctor->id }}" @if($doctor->id == $lab_report->reference_doctor_id) selected @endif>{{ $doctor->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="blood_group">Blood Group</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="blood_group">Blood Group</label>
                                        <input class="md-input" type="text" id="blood_group" name="blood_group" value="{{ $lab_report->blood_group }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="amikacin">Amikacin</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="amikacin">Amikacin %</label>
                                        <input class="md-input" type="text" id="amikacin" name="amikacin"  value="{{ $lab_report->amikacin }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="organism_isolated">Organism Isolated</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="organism_isolated">Organism Isolated %</label>
                                        <input class="md-input" type="text" id="organism_isolated" name="organism_isolated" value="{{ $lab_report->organism_isolated }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="hemoglobin">Hemoglobin</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="hemoglobin">Hemoglobin %</label>
                                        <input class="md-input" type="text" id="hemoglobin" name="hemoglobin" value="{{ $lab_report->hemoglobin }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="white_blood_sell">White Blood Cell</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="white_blood_sell">White Blood Cell %</label>
                                        <input class="md-input" type="text" id="white_blood_sell" name="white_blood_sell" value="{{ $lab_report->white_blood_sell }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="red_blood_sell">Red Blood Cell</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="red_blood_sell">Red Blood Cell %</label>
                                        <input class="md-input" type="text" id="red_blood_sell" name="red_blood_sell" value="{{ $lab_report->red_blood_sell }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="neutrophil">Neutrophil</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="neutrophil">Neutrophil %</label>
                                        <input class="md-input" type="text" id="neutrophil" name="neutrophil" value="{{ $lab_report->neutrophil }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="basophil">Basophil</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="basophil">Basophil %</label>
                                        <input class="md-input" type="text" id="basophil" name="basophil" value="{{ $lab_report->basophil }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="mpv">MPV</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="mpv">MPV %</label>
                                        <input class="md-input" type="text" id="mpv" name="mpv" value="{{ $lab_report->mpv }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="mcv">MCV</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="mcv">MCV %</label>
                                        <input class="md-input" type="text" id="mcv" name="mcv" value="{{ $lab_report->mcv }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="mch">MCH</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="mch">MCH %</label>
                                        <input class="md-input" type="text" id="mch" name="mch" value="{{ $lab_report->mch }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="pdw">PDW</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="pdw">PDW %</label>
                                        <input class="md-input" type="text" id="pdw" name="pdw" value="{{ $lab_report->pdw }}">
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="summary">Summary</label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="summary">Summary</label>
                                        <textarea class="md-input" name="summary" id="summary">{{ $lab_report->summary }}</textarea>
                                    </div>
                                </div>

                                <div class="uk-grid" data-uk-grid-margin>
                                    <div class="uk-width-medium-1-6  uk-vertical-align">
                                        <label class="uk-vertical-align-middle" for="summary">Status<span class="req">*</span></label>
                                    </div>
                                    <div class="uk-width-medium-2-6">
                                        <label for="summary">Summary</label>
                                        <select id="status" name="status" class="md-input" required>
                                            <option value="2" @if($test->status == 2) selected @endif>Test Taken</option>
                                            <option value="3">Report Complete</option>
                                        </select>
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
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_lab_take_test').addClass('act_item');
        $(window).load(function(){
            $("#tiktok_account").trigger('click');
        })
    </script>

@endsection