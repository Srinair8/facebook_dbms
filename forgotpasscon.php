<?php
$servername="localhost";
$mysql_user="root";
$mysql_pass="";
$dbname="facebook";
$conn=mysqli_connect($servername, $mysql_user, $mysql_pass, $dbname);
if($conn){
    echo("connection");
}
?>