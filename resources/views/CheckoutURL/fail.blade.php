<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fail</title>
</head>
<body>
    <div style="text-align: center">
         <h1>Sorry !! Payment Failed, Please try again later.</h1>
    </div>
    <br><br>
    <div style="text-align: center; color: red;">
        @if(isset($statusMessage))
           {{ $statusMessage }}
        @endif

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