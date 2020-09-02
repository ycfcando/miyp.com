<?php
  header('content-type:text/html;charset=utf-8');

  $goodsData = array(
    'host'=>'localhost:3306',   //地址
    'db_user'=>'root',    //用户名
    'db_paw'=>'root',   //密码
    'db_name'=>'goods'   //数据库名
  );

  $mysqli = @new mysqli(
    $goodsData['host'],
    $goodsData['db_user'],
    $goodsData['db_paw']
  );

  if($mysqli->connect_errno){
    die('连接失败'.$mysqli->connect_errno);
  }

  $mysqli->query('set name utf-8');

  $select_dbR = $mysqli->select_db($goodsData['db_name']);

  if(!$select_dbR){
    echo '数据库选择失败'.$mysqli->error;   //$mysqli->error 存储错误 字符串
  }
?>