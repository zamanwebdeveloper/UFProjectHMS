<html>

    <head>
        <title>Vendor Status {{ $start }} to {{ $end }}</title>
    
        <style>
            title tr td{
                width:100%;
    
            }
            table{
                text-align: center;
                font-size: 10px;
                border: 0px;
                border-collapse: collapse;
            }
            #vendor_details tr th{
                border: 1px solid black;
            }
            #vendor_details tr td{
                border: 1px solid black;
            }
            @media print{
                
                @page {size: landscape}
            }
        </style>
    </head>
    
    <body>
        
        <div style="text-align: center;">
            <img style="margin-bottom: -20px;"  src="{{ url('uploads/op-logo/logo.png') }}" alt="" height="30" width="60"/>
            <p style="line-height: 1px; margin-top: 35px;" >{{ $OrganizationProfile->company_name }}</p>
            <p style="line-height: 1px; font-size: 13px;" > {{ $vendor }} Vendor Status </p>
            <p style="line-height: 0px; font-size: 10px;" >From {{$start}}  To {{$end}}</p>
        </div>
        <div style="text-align: center">
        
            <table  cellspacing="0" width="100%" cellpadding="3" border="1" id = "vendor_details">
        
        
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Order Id</th>
                    <th>Ticket Number</th>
                    <th>Payable</th>
                    <th>Paid</th>
                    <th>Due</th>
        
                </tr>
                </thead>
                
                <tbody>
                    
                    <?php
                        $total_payable  = 0;
                        $total_due     = 0;
                    ?>
                        
                    @foreach($order as $value)
                        <?php
                            $total_payable  += ($value->bill['amount'] > 0)? $value->bill['amount'] : 0;
                            $total_due     += ($value->bill['due_amount'] > 0)? $value->bill['due_amount'] : 0;
                        ?>
                
                        <tr>
                            <td>{!! date("Y-m-d",strtotime($value->created_at)) !!}</td>
                            <td>{!! $value->order_id !!}</td>
                            <td>{!! $value->ticket_number !!}</td>
                            <td>{!! $value->bill['amount'] !!}</td>
                            <td>{!! ($value->bill['amount'])-($value->bill['due_amount']) !!}</td>
                            <td>{!! $value->bill['due_amount'] !!}</td>
            
                        </tr>
                    @endforeach
                    
                    <tr>
                        <td style="width: 86%; text-align: right;" colspan = "3">Total</td>
                        <td style="width: 3%;">{{ $total_payable }}</td>
                        <td style="width: 3%;">{{ $total_payable - $total_due }}</td>
                        <td style="width: 15%;">{{ $total_due }}</td>
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