
$getPayments = Invoke-WebRequest -Uri https://connect.squareup.com/v2/payments -Headers @{'Square-Version'='2020-04-22'; 'Authorization' = 'Bearer EAAAEWcJ4CvaqvnoMsCO7U5iBRmTlUoLtkFwfVrtTEDtGSdMVvcLDigowB0gwSL_'; 'Content-Type'='application/json'}
#$payment_id = $getPayments
$getPaymentID = Invoke-WebRequest -Uri https://connect.squareup.com/v2/payments/zRMi7t2y2hAhpzdfXVvkiu8DvaB -Headers @{'Square-Version'='2020-04-22'; 'Authorization' = 'Bearer EAAAEWcJ4CvaqvnoMsCO7U5iBRmTlUoLtkFwfVrtTEDtGSdMVvcLDigowB0gwSL_'; 'Content-Type'='application/json'}
$getCustomers = Invoke-WebRequest -Uri https://connect.squareup.com/v2/customers -Headers @{'Square-Version'='2020-04-22'; 'Authorization' = 'Bearer EAAAEWcJ4CvaqvnoMsCO7U5iBRmTlUoLtkFwfVrtTEDtGSdMVvcLDigowB0gwSL_'; 'Content-Type'='application/json'}
$getLocation = Invoke-WebRequest -Uri https://connect.squareup.com/v2/locations -Headers @{'Square-Version'='2020-04-22'; 'Authorization' = 'Bearer EAAAEWcJ4CvaqvnoMsCO7U5iBRmTlUoLtkFwfVrtTEDtGSdMVvcLDigowB0gwSL_'; 'Content-Type'='application/json'}

$getPayments.Content | ConvertFrom-Json | ConvertTo-Json