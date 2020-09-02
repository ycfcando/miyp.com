<?php
  include('./conn.php');

  $id = $_GET['id'];

  $sql = "select * from domdpy1 where id='$id'";
  $result = $mysqli->query($sql);
  $mysqli->close();
  $row = $result->fetch_assoc();
  $row = json_encode($row);
  echo $row;
?>