<?php
require 'class.phpmailer.php';

$mail = new PHPMailer;

$mail->IsSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'mail.upchar.info';                 // Specify main and backup server
$mail->Port = 2525;                                    // Set the SMTP port
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'upchar@upchar.info';                // SMTP username
$mail->Password = 'swati@123';                  // SMTP password
$mail->SMTPSecure = 'plain';                            // Enable encryption, 'ssl' also accepted

$mail->From = 'upchar@upchar.info';
$mail->FromName = 'Upchar';
$mail->AddAddress('gyantech.vns@gmail.com');  // Add a recipient
$mail->AddAddress('recepientmail ID');               // Name is optional

$mail->IsHTML(true);                                  // Set email format to HTML

$mail->Subject = 'SMTP script sample code';
$mail->Body    = 'This is the HTML message body <strong>in bold!</strong>';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->Send()) {
   echo 'Message could not be sent.';
   echo 'Mailer Error: ' . $mail->ErrorInfo;
   exit;
}

echo 'Message has been sent';
