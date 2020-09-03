<?php
  include('./conn.php');

  $phone = $_GET['phone'];

  $sql = "select * from user where phone='$phone'";

  $result = $mysqli->query($sql);

  if($result->num_rows > 0){
    echo 1;
  }else{
    echo '';
  }
  
?>