@extends('layouts.main')

@section('title', 'Test Report')

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

                                <li class="heading_list">Recent Test Report</li>

                                @foreach($lab_reports as $lab_report)
                                    <li>
                                        <a href="{{ route('lab_test_report_show', ['id' => $lab_report->test_id]) }}" class="md-list-content">
                                            <span class="md-list-heading uk-text-truncate">   <span class="uk-text-small uk-text-muted">{{ "RENO-".$lab_report->report_no }}</span></span>
                                            <span class="uk-text-small uk-text-muted">{{ $helper->getPatientSerial($report->patient_id) }}</span>
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

            <div class="uk-width-large-8-10">
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
                                                <a href="">Edit</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <h3 class="md-card-toolbar-heading-text large" id="invoice_name">Report : {{ "RENO-".$report->report_no }}</h3>
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
                                        <h2 style="text-align: center; width: 90%;" class="">Test Report</h2>
                                        <p style="text-align: center; width: 90%;" class="uk-text-small uk-text-muted uk-margin-top-remove"># Report : {{ "RENO-".$report->report_no }}</p>
                                    </div>
                                </div>
                            </div>

                            <div class="uk-grid">
                                <div class="uk-width-small-1-3 uk-row-first">
                                    <div class="uk-margin-bottom">
                                        <table>
                                            <tr>
                                                <td>Patient ID</td>
                                                <td>:</td>
                                                <td>{{ $helper->getPatientSerial($report->patient_id) }}</td>
                                            </tr>
                                            <tr>
                                                <td>Name</td>
                                                <td>:</td>
                                                <td>{{ $helper->getPatientName($report->patient_id) }}</td>
                                            </tr>
                                            <tr>
                                                <td>Reffered By</td>
                                                <td>:</td>
                                                <td>{{ $report->doctor->name }}</td>
                                            </tr>`
                                            <tr>
                                                <td>Speciment</td>
                                                <td>:</td>
                                                <td>{{ $report->test_category->name }}</td>
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
                                                <td>Received Date</td>
                                                <td>:</td>
                                                <td>{{ $report->taking_date }}</td>
                                            </tr>
                                            <tr>
                                                <td>Delivery Date</td>
                                                <td>:</td>
                                                <td>{{ $report->delivery_date }}</td>
                                            </tr>
                                            <tr>
                                                <td>Age</td>
                                                <td>:</td>
                                                <td>{{ $helper->getPatientAge($report->patient_id)." Year" }}</td>
                                            </tr>
                                            <tr>
                                                <td>Sex</td>
                                                <td>:</td>
                                                <td>Male</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <input type="hidden" name="invoice_id">

                            <div class="uk-grid">
                                <div class="uk-width-small-1-1">
                                    <div class="uk-margin-bottom">
                                        <table id="table_center" border="1" class="uk-table">
                                            <thead>
                                                <tr class="uk-text-upper">
                                                    <th>#</th>
                                                    <th>Test Name</th>
                                                    <th>Result</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Blood Group</td>
                                                    <td>{{ $report->blood_group." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Amikacin</td>
                                                    <td>{{ $report->amikacin." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Organism Isolated</td>
                                                    <td>{{ $report->organism_isolated." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Hemoglobin</td>
                                                    <td>{{ $report->hemoglobin." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>White Blood cell</td>
                                                    <td>{{ $report->white_blood_sell." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>Red Blood cell</td>
                                                    <td>{{ $report->red_blood_sell." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>Neutrophil</td>
                                                    <td>{{ $report->neutrophil." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td>Basophil</td>
                                                    <td>{{ $report->basophil." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td>MPV</td>
                                                    <td>{{ $report->mpv." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td>MCV</td>
                                                    <td>{{ $report->mcv." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>11</td>
                                                    <td>MCH</td>
                                                    <td>{{ $report->mch." %" }}</td>
                                                </tr>
                                                <tr>
                                                    <td>12</td>
                                                    <td>PDW</td>
                                                    <td>{{ $report->pdw." %" }}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>


                            <div class="uk-grid">
                                <div class="uk-width-1-2">
                                    <span class="uk-text-muted uk-text-small uk-text-italic">Notes: <span class=""><?php $report->summary ?></span></span>
                                </div>
                            </div>

                            <div class="uk-grid" style="margin-top:70px;">
                                <div class="uk-width-1-2" style="text-align: left">
                                    <p class="uk-text-small uk-margin-bottom">Prepared By</p>
                                </div>
                                <div class="uk-width-1-2" style="text-align: right">
                                    <p class="uk-text-small uk-margin-bottom">Pathologist Signature</p>
                                </div>
                            </div>
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
        $('#sidebar_lab_test_report').addClass('act_item');

        $(window).load(function(){
            $("#tiktok_account").trigger('click');

        })
    </script>
@endsection
