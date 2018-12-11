<?php
require "../include/db_connection.php";
//عدم ارتباط با سررور
if($status==0){
    $accept=0;
}

$query="SELECT * ";
$query.="FROM teachers ";

$result=mysqli_query($connection,$query);
$response["teachers"]=array();

if(mysqli_num_rows($result)>0){
    while ($row=mysqli_fetch_assoc($result)){
        $temp=array();
        $temp["id"]=(int)$row["id"];
        $temp["personal_code"]=$row["personal_code"];
        $temp["name"]=$row["name"];
        $temp["expertise"]=$row["expertise"];
        $temp["degree"]=(int)$row["degree"];
        $temp["active"]=(int)$row["active"];

       
        array_push($response["teachers"],$temp);
    }
    print_r( $response);
 
    echo json_encode($response,JSON_UNESCAPED_UNICODE);
   
}

require "../include/db_disconnect.php";

