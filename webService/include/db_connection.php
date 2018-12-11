<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");

define("DB_SERVER","");
define("DB_USER","root");
define("DB_PASSWORD","");
define("DB_NAME","xamani");
$status=1;

$connection=mysqli_connect(DB_SERVER,DB_USER,DB_PASSWORD,DB_NAME);
mysqli_set_charset($connection,"utf8");

if(mysqli_connect_errno()){
   $status=0;
}
?>