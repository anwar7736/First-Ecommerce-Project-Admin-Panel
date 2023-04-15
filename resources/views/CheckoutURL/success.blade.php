<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Success</title>
</head>
<body>
    <div style="text-align: center;">
        <h1>Congratulations !! Your payment has been successfully done.</h1>
    </div>
    <br><br>
    <div style="text-align: center;">
        @if(isset($response))
           {{ $response }}
        @endif
        <div style="margin-top:30px">
             <a href="http://localhost:3000/order_details">View Order List</a>
             <a href="http://localhost:3000/payment_list" style="margin-left: 40px">View Payment List</a>
        </div>
    </div>
</body>
</html>