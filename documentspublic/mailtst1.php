<?php //Main Application access point

/* require_once "C:\\p2\\websw\\xampp\\htdocs\\xataface\\dataface-public-api.php"; */

//require_once "..//xataface//dataface-public-api.php";
require_once "xataface/dataface-public-api.php";

//set default sort order. needed to add this for 1.5x. the applicationdelegate.php stanza was not working for ver 1.5x.
//
if ( !isset($_REQUEST['-sort']) and @$_REQUEST['-table'] == 'nte_note' ){
    $_REQUEST['-sort'] = $_GET['-sort'] = 'updatedtime desc';
   }
   
$to = "dgleba@gmail.com";
$subject = "test mail 2013-04-18";
$body = "Test Hi,\n\nHow are you?";
$headers = "From: stackpole.stratford@gmail.com" . "\r\n";
if (mail($to, $subject, $body, $headers)) {
    echo ("Message successfully sent!");
} else {
    echo ("Message delivery failed...");
}

