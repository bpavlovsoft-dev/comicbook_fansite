<?php
  require 'db.inc.php';
  $db = mysqli_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS)
    or die('Enable to connect');
  mysqli_select_db($db, MYSQL_DB)
      or die(mysqli_error($db));
  switch($_POST['action'])
  {
    case 'Add Character':
      $alias = mysqli_real_escape_string($db, $_POST['alias']);
      $real_name = mysqli_real_escape_string($db, $_POST['real_name']);
      $address = mysqli_real_escape_string($db, $_POST['address']);
      
    break;
  }    
?>