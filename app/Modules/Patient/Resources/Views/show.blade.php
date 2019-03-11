@extends('layouts.main')

@section('title', 'Patient')

@section('header')
    @include('inc.header')
@endsection

@section('styles')
    <style>
        @media print {
            .md-card-toolbar {
                display: none;
            }

            .uk-table tr td {
                padding: 1px 0px;
                font-size: 11px !important;
                text-align: center;
                border-bottom: 1px solid #000;
                border-top: 1px solid #000;
            }

            .uk-table tr th {
                padding: 1px 0px;
                font-size: 11px !important;
                text-align: center;
            }
            body{
                margin-top: -60px;
            }


        }

        .uk-table tr td {
            padding: 1px 0px;
            font-size: 13px !important;
            text-align: center;
            border-bottom: 1px solid #000;
            border-top: 1px solid #000;
            padding: 5px;
        }

        .uk-table tr th {
            padding: 1px 0px;
            font-size: 11px !important;
            text-align: center;
        }

    </style>
@endsection

@section('sidebar')
    @include('inc.sidebar')
@endsection

@section('content')

    <?php $helper = new \App\Lib\Helpers; ?>
    @inject('theader', '\App\Lib\TemplateHeader')

    <div class="uk-width-medium-10-10 uk-container-center reset-print">
        <div class="uk-grid uk-grid-collapse" data-uk-grid-margin>

            <div class="uk-width-large-2-10 hidden-print uk-visible-large uk-row-first">
                <div class="md-list-outside-wrapper">
                    <div class="scroll-wrapper scrollbar-inner" style="position: relative;">
                        <div class="scrollbar-inner scroll-content" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 390px;">
                            <ul class="md-list md-list-outside">
                                <li class="heading_list">Recent Prescription</li>
                                @foreach($prescriptions as $prescription)
                                    <li>
                                        <a href="{{ route('prescription_show', ['id' => $prescription->id]) }}" class="md-list-content">
                                            <span class="md-list-heading uk-text-truncate">   <span class="uk-text-small uk-text-muted">{{ date('d-m-Y',strtotime($prescription->date)) }}</span></span>
                                            <span class="uk-text-small uk-text-muted">Doctor: -{{ $prescription->doctor['name'] }}</span>
                                        </a>
                                    </li>
                                @endforeach
                                <li class="uk-text-center">
                                    <a class="md-btn md-btn-primary md-btn-mini md-btn-wave-light waves-effect waves-button waves-light uk-margin-top" href="{{ route('prescription_index') }}">See All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="uk-width-large-6-10">
                <div class="md-card md-card-single main-print">
                    <div id="invoice_preview">
                        <div class="md-card-toolbar">
                            <div class="md-card-toolbar-actions hidden-print">
                                <i class="md-icon material-icons" id="invoice_print"></i>
                                <div class="md-card-dropdown" data-uk-dropdown="{pos:'bottom-right'}" aria-haspopup="true" aria-expanded="false">
                                    <i class="md-icon material-icons"></i>
                                    <div class="uk-dropdown" aria-hidden="true">
                                        <ul class="uk-nav">
                                            <li>
                                                <a href="{{ route('patient_edit', ['id' => $patient->id]) }}">Edit</a>
                                                <a href="{{ route('test_create', ['id' => $patient->id]) }}">New Test</a>
                                                <a href="{{ route('status_create', ['id' => $patient->id]) }}">New Status</a>
                                                <a href="{{ route('prescription_create', ['patient_id' => $patient->id]) }}">New Prescription</a>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <h3 class="md-card-toolbar-heading-text large" id="invoice_name">Patient : {{ "PID-".$patient->serial }}</h3>
                        </div>

                        <div class="md-card-content invoice_content print_bg">

                            @if($theader->getBanner()->headerType)
                                <div class="" style="text-align: center;">
                                    <img src="{{ asset($theader->getBanner()->file_url) }}">
                                </div>
                            @else
                                <div class="uk-grid" data-uk-grid-margin style="text-align: center; margin-top:50px;">
                                    <h1 style="width: 100%; text-align: center;"><img style="text-align: center;" class="logo_regular" src="{{ url('uploads/op-logo/logo.png') }}" alt="" height="15" width="71"/> {{ $OrganizationProfile->company_name }}</h1>
                                </div>
                                <div class="" style="text-align: center;">

                                    <p>{{ $OrganizationProfile->street }},{{ $OrganizationProfile->city }},{{ $OrganizationProfile->state }},{{ $OrganizationProfile->country }}</p>

                                    <p style="margin-top: -17px;">{{ $OrganizationProfile->email }},{{ $OrganizationProfile->contact_number }}</p>
                                </div>
                            @endif


                            <div class="uk-grid" data-uk-grid-margin>

                                <div class="uk-width-5-5" style="font-size: 12px;">
                                    <div class="uk-grid">
                                        <h2 style="text-align: center; width: 90%;" class="">Patient</h2>
                                        <p style="text-align: center; width: 90%;" class="uk-text-small uk-text-muted uk-margin-top-remove"># Patient : {{ "PID-".$patient->serial }}</p>

                                    </div>
                                </div>


                            </div>
                            <input type="hidden" name="invoice_id">

                            <div class="uk-grid">
                                <div class="uk-width-small-1-3 uk-row-first">
                                    <div class="uk-margin-bottom">
                                        <table>
                                            <tr>
                                                <td>Name</td>
                                                <td>{{ ": ".$patient->name }}</td>
                                            </tr>
                                            <tr>
                                                <td>Age</td>
                                                <td>{{ ": ".$patient->age }}</td>
                                            </tr>
                                            <tr>
                                                <td>BP</td>
                                                <td>{{ ": ".$patient->blood_pressure }}</td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                                <div class="uk-width-small-1-3">
                                </div>
                                <div class="uk-width-small-1-3">
                                    <div class="uk-margin-bottom">
                                        <table>
                                            <tr>
                                                <td>Admit Status</td>
                                                @if($patient->admit_status == 1)
                                                    <td>{{ ": Admitted" }}</td>
                                                @elseif($patient->admit_status == 2)
                                                    <td>{{ ": Discharged" }}</td>
                                                @else
                                                    <td>{{ ": Not Admit" }}</td>
                                                @endif
                                            </tr>
                                            <tr>
                                                <td>Admit Date</td>
                                                <td>{{ ": ".date("d-m-Y", strtotime($patient->admission_date)) }}</td>
                                            </tr>
                                            <tr>
                                                <td>Discharge Date</td>
                                                <td>{{ ": ".date("d-m-Y", strtotime($patient->discharge_date)) }}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="uk-grid">
                                <div class="uk-width-1-1 uk-row-first">
                                    <h3 class="heading_a">Patient Current Status</h3>
                                    <table id="table_center" border="1" class="uk-table">
                                        <thead>
                                            <tr class="uk-text-upper">
                                                <th>#</th>
                                                <th>Symptom</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $i=1; ?>
                                            @foreach($patient_status as $status)
                                                <tr class="uk-table-middle">
                                                    <td>{{ $i++ }}</td>
                                                    <td>{{ $status->symptom }}</td>
                                                    <td>{{ $status->status }}</td>
                                                    <td>{{ date("d-m-Y", strtotime($status->created_at)) }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                            </div>

                            <div class="uk-grid">
                                <div class="uk-width-1-2">
                                    <span class="uk-text-muted uk-text-small uk-text-italic">Notes: <span class=""><?php  ?></span></span>
                                </div>
                            </div>

                            <div class="uk-grid" style="margin-top:70px;">
                                <div class="uk-width-1-2" style="text-align: left">
                                    <p class="uk-text-small uk-margin-bottom">Doctor Signature</p>
                                </div>
                                <div class="uk-width-1-2" style="text-align: right">
                                    <p class="uk-text-small uk-margin-bottom">Authority Signature</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <div class="uk-width-large-2-10 hidden-print uk-visible-large uk-row-first">
                <div class="md-list-outside-wrapper">
                    <div class="scroll-wrapper scrollbar-inner" style="position: relative;">
                        <div class="scrollbar-inner scroll-content" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 390px;">
                            <ul class="md-list md-list-outside">
                                <li class="heading_list">Recent Test Report</li>
                                @foreach($lab_reports as $lab_report)
                                    <li>
                                        <a href="{{ route('lab_test_report_show', ['id' => $lab_report->test_id]) }}" class="md-list-content">
                                            <span class="md-list-heading uk-text-truncate">   <span class="uk-text-small uk-text-muted">{{ "RENO-".$lab_report->report_no }}</span></span>
                                            <span class="uk-text-small uk-text-muted">Patient: -{{ $lab_report->patient['name'] }}</span>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
@endsection
@section('script')
    <script src="{{ url('admin/assets/js/pages/page_invoices.min.js')}}"></script>
    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_patient').addClass('act_item');

        $(window).load(function(){
            $("#tiktok_account").trigger('click');

        })
    </script>
@endsection
