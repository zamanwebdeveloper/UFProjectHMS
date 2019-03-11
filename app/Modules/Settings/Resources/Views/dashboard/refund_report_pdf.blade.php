<html>

<head>
    <title>Refund Summary {{ $start }} to {{ $end }}</title>


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
        #refund_table tr th{
            border: 1px solid black;
        }
        #refund_table tr td{
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
        <p style="line-height: 1px; font-size: 13px;" > Refund Summary </p>
        <p style="line-height: 0px; font-size: 9px;" >From {{$start}}  To {{$end}}</p>
    </div>
    
    <div style="text-align: center">
    
    
        <table border="1" cellpadding="1" cellspacing="0" width="100%" id = "refund_table">
    
    
            <thead>
                <tr>
                    <th>Serial</th>
                    <th>Submit <br/>Date</th>
                    <th>Customer Name</th>
                    <th>Ticket Number</th>
                    <th>Passenger Name</th>
                    <th>Sector</th>
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
                ?>
                
                @foreach($refund as $value)
                    <?php
                        $total_invoice  += ($value->invoice['total_amount'] > 0)? $value->invoice['total_amount'] : 0;
                        $total_bill     += ($value->bill['amount'] > 0)? $value->bill['amount'] : 0;
                    ?>
                    
                    <tr>
                        <td>{{ $i++ }}</td>
                        <td>{{ date('d-m-Y',strtotime($value->submit_date)) }}</td>
                        <td style="text-align: left;">{{ $value->customerId['display_name'] }}</td>
                        <td>{{ $value->ticket_number }}</td>
                        <td style="text-align: left;">{{ $value['first_name']." ".$value['last_name'] }}</td>
                        <td style="text-align: left;">{!! $value->sectorId['item_name'] !!} @if($value->reference && $value->reference != " ") {{ " - " . $value->reference }} @endif</td>
                        <td>{!! $value->invoice['total_amount'] !!}</td>
                        <td>{!! $value->bill['amount'] !!}</td>
                        <td style="text-align: left;">{!! $value->vendorId['display_name'] !!}</td>
                    </tr>
                @endforeach
                
                <tr>
                    <td style="width: 86%; text-align: right;" colspan = "6">Total</td>
                    <td style="width: 3%;">{{ $total_invoice }}</td>
                    <td style="width: 3%;">{{ $total_bill }}</td>
                    <td style="width: 15%; text-align: left;"></td>
    
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