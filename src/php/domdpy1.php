<?php
  include('./conn.php');
  $num = $_REQUEST['goodstype'];
  if($num == 1){
    $result = $mysqli->query('select * from domdpy1');
  }else if($num == 2){
    $result = $mysqli->query('select * from daygoods');
  }else{
    $result = $mysqli->query('select * from banner');
  }


  $arr = array();
  while($row = $result->fetch_assoc()){
    array_push($arr,$row);
  }

  echo json_encode($arr);
?>