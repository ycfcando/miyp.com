<?php
  include('./conn.php');

  $username = $_POST['username'];
  $psd = $_POST['password'];
  
  $sql = "select * from user where phone='$username' and password='$psd'";
  $result = $mysqli->query($sql);

  if($result->num_rows>0){
    $row = $result->fetch_assoc();
    $row = json_encode($row);
    echo $row;
  }else{
    echo '';
  }
?>