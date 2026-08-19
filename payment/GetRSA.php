<?php
 set_time_limit(0);
//$time = date('y-m-d h:i:s');
$url = "https://secure.ccavenue.com/transaction/getRSAKey";
$fields = array(
        'access_code'=>base64_decode('QVZPVTgzR0IyM0FCMjJVT0JB'),
         'order_id'=>$_REQUEST['order_id']
       // 'order_id'=>substr(md5(uniqid(mt_rand(), true)), 0, 6)
);
//print_r($fields);
$postvars='';
$sep='';
foreach($fields as $key=>$value)
{
        $postvars.= $sep.urlencode($key).'='.urlencode($value);
        $sep='&';
}

$ch = curl_init();

curl_setopt($ch,CURLOPT_URL,$url);
curl_setopt($ch,CURLOPT_POST,count($fields));
curl_setopt($ch, CURLOPT_CAINFO, 'cacert.pem');
curl_setopt($ch,CURLOPT_POSTFIELDS,$postvars);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);


$result = curl_exec($ch);
curl_close($ch);
echo $result; die;

/*  curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,900000);
 curl_setopt($ch,CURLOPT_TIMEOUT,900000);
curl_setopt($ch,CURLOPT_ACCEPTTIMEOUT_MS,900000);  */


// for check the error use this one in each curl_setopt function
/* if(curl_exec($ch) === false)
{
    echo 'Curl error: ' . curl_error($ch);
}
else
{
    //echo "No Error";
} */

?>
