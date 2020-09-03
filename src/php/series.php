<?php
  include('../php/conn.php');

  $jdata = file_get_contents("php://input");

  $jdata = json_decode($jdata);
  $arr;
  for($i = 0; $i < count($jdata); $i++){
    //从获取库存
    // number_format($jdata[$i]->id);
    $num = $jdata[$i]->id;
    $shu = $jdata[$i]->num;
    $sql = "select storage from domdpy1 where id=$num";
    $result = $mysqli->query($sql);
    $row = $result->fetch_assoc();
    $row = $row['storage'];
    $sql = "update domdpy1 set storage=$row-$shu where id=$num";
    $mysqli->query($sql);
  }
  echo '购买成功';
?>