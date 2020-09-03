<?php
  include('./conn.php');

  $phone = $_GET['phone'];
  $password = $_GET['password'];

  $sql = "INSERT INTO `user` ( `phone`, `password`) VALUES ('$phone', '$password')";

  $result = $mysqli->query($sql);

  if($result){
    echo '注册成功';
  }
  
?>