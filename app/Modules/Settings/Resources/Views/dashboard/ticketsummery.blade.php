<html>

<head>
    <title>Ticket Summery {{ $start }} to {{ $end }}</title>


    <style>
        title tr td{
            width:90%;
        }
        table{
            text-align: center;
            font-size: 10px;
            border: 0px;
            border-collapse: collapse;
        }
        #summary_table tr th{
            border: 1px solid black;
        }
        #summary_table tr td{
            border: 1px solid black;
        }
        
        @media print{
            @page {size: landscape}
        }
    </style>

</head>

<body >
    
    <div style="text-align: center;">
        <img style="margin-bottom: -20px;"  src="{{ url('uploads/op-logo/logo.png') }}" alt="" height="30" width="60"/>
        <p style="line-height: 1px; margin-top: 35px;" >{{ $OrganizationProfile->company_name }}</p>
        <p style="line-height: 1px; font-size: 13px;" > Ticket Summery </p>
        <p style="line-height: 0px; font-size: 9px;" >From {{$start}}  To {{$end}}</p>
    </div>
    
    <div style="text-align: center;">
    
        <table border="1" cellpadding="1" cellspacing="0" width="100%" id="summary_table">
    
            <thead>
                <tr>
                    <th>#</th>
                    <th>Issue <br/>Date</th>
                    <th>Order</th>
                    <th>Customer</th>
                    <th>Passenger</th>
                    <th>Passport Number</th>
                    <th>Ticket</th>
                    <th>Destination <br/>Sector</th>
                    <th>Invoice<br/>Amount</th>
                    <th>Payable</th>
                    <th>Vendor</th>
                </tr>
            </thead>
    
            <tbody>
                <?php 
                    $i              = 1;
                    $total_invoice  = 0;
                    $total_bill     = 0;
                    $total_profit   = 0;
                ?>
                
                @foreach($order as $value)
                    
                    <?php
                        $total_invoice  += ($value->invoice['total_amount'] > 0)? $value->invoice['total_amount'] : 0;
                        $total_bill     += ($value->bill['amount'] > 0)? $value->bill['amount'] : 0;
                        $total_profit   = $total_invoice - $total_bill;
                    ?>
                    
                    <tr>
                        <td style="width: 2%;">{!! $i++ !!}</td>
                        <td style="width: 7%;">{!! $value->issuDate !!}</td>
                        <td style="width: 7%;">{!! $value->order_id !!}</td>
                        <td style="width: 10%; text-align: left;">{!! $value->contact['display_name'] !!}</td>
                        <td style="width: 20%; text-align: left;">{!! $value['first_name']." ". $value['last_name'] !!}</td>
                        <td style="width: 8%;">{!! $value->passport_number !!}</td>
                        <td style="width: 10%;">{!! $value->ticket_number !!}</td>
                        <td style="width: 20%; text-align: left;">{!! $value->departureSector !!} @if($value->documentNumber && $value->documentNumber != " ") {{ " - " . $value->documentNumber }} @endif</td>
                        <td style="width: 3%;">{!! $value->invoice['total_amount'] !!}</td>
                        <td style="width: 3%;">{!! $value->bill['amount'] !!}</td>
                        <td style="width: 18%; text-align: left;">{!! $value->vendor['display_name'] !!}</td>
        
                    </tr>
                @endforeach
                
                    <tr>
                        <td style="width: 86%; text-align: right;" colspan = "8">Total</td>
                        <td style="width: 3%;">{{ $total_invoice }}</td>
                        <td style="width: 3%;">{{ $total_bill }}</td>
                        <td style="width: 15%; text-align: left;" colspan = "2"></td>
        
                    </tr>
            </tbody>
            
        </table>
        
    </div>
    
    <table style="border: 0px solid black; width: 100%; margin-top: 40px; font-size: 14px;">
        <tr>
            <td style="text-align: left;">Accounts Signature</td>
            <td style="text-align: right;">Authorized Signature</td>
        </tr>
    </table>
    
    <script>
        window.onload =function () {
    
              print();
    
        }
    </script>
</body>
</html>