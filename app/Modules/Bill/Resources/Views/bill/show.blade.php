@extends('layouts.main')

@section('title', 'Bill Show')

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
                font-size: 13px !important;
                text-align: center;
                border-bottom: 1px solid #000;
                border-top: 1px solid #000;
                padding:5px;
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

            <div class="uk-width-large-1-1">
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

                            <h3 class="md-card-toolbar-heading-text large" id="invoice_name">Patient : {{ "PID-".$bill->patient['serial']}}</h3>
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
                                        <h2 style="text-align: center; width: 90%;" class="">Bill Detials</h2>
                                        <p style="text-align: center; width: 90%;" class="uk-text-small uk-text-muted uk-margin-top-remove"># Bill : {{ $bill->bill_number }}</p>

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
                                                <td>{{ ": ".$bill->patient['name'] }}</td>
                                            </tr>
                                            <tr>
                                                <td>Age</td>
                                                <td>{{ ": ".$bill->patient['age'] }}</td>
                                            </tr>
                                            <tr>
                                                <td>Sex</td>
                                                <td>{{ ": ".$bill->patient['gender'] == 0 ? 'Male' : 'Female' }}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="uk-width-small-1-3"></div>
                                <div class="uk-width-small-1-3"></div>
                            </div>

                            <div class="uk-grid">
                                <div class="uk-width-1-1">
                                    <h3 class="heading_a">Total Bill</h3>
                                    <table id="table_center" border="1" class="uk-table">
                                        <thead>
                                        <tr class="uk-text-upper">
                                            <th>#</th>
                                            <th>Particular</th>
                                            <th>Amount</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php $i=1; $total_amount = 0; ?>
                                        @foreach($bill_entry as $entry)
                                            <tr class="uk-table-middle">
                                                <td>{{ $i++ }}</td>
                                                <td>{{ $entry->bill_type }}</td>
                                                <td>{{ number_format($entry->amount, 2, '.', ' ') }}</td>
                                            </tr>
                                            <?php $total_amount += $entry->amount ?>
                                        @endforeach

                                        <tr class="uk-table-middle">
                                            <td></td>
                                            <td><strong>Total</strong></td>
                                            <td><strong>{{ number_format($total_amount, 2, '.', ' ') }}</strong></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="uk-grid">
                                <div class="uk-width-1-2">
                                    <span class="uk-text-muted uk-text-small uk-text-italic">Notes: <span class=""><?php /*$prescription->summary*/ ?></span></span>
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

        </div>

    </div>
@endsection
@section('script')
    <script src="{{ url('admin/assets/js/pages/page_invoices.min.js')}}"></script>
    <script>
        $('#sidebar_main_account').addClass('current_section');
        $('#sidebar_bill').addClass('act_item');
    </script>
@endsection
