<?php
  include('./conn.php');

  $goods = $mysqli->query('select * from goods');

  $goodsArr = array();
  while($row = $goods->fetch_assoc()){
    array_push($goodsArr,$row);
  }

  $goodsArr = json_encode($goodsArr);
  echo $goodsArr;
?>