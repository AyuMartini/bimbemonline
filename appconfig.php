
<?php

class AppConfig {

 public $dbhost = "localhost";
 public $dbport = "3306";
 public $dbuser = "root";
 public $dbpass = "";
 public $dbname = "bimble_online";





function getDbhost() {
  return $this->dbhost;
}
function getDbport() {
  return $this->dbport;
}
function getDbuser() {
  return $this->dbuser;
}
function getDbpass() {
  return $this->dbpass;
}
function getDbname() {
  return $this->dbname;
}
}


$appConfig = new AppConfig();
$_SESSION["dbhost"] =  $appConfig -> getDbhost();
$_SESSION["dbport"] =  $appConfig -> getDbport();
$_SESSION["dbuser"] =  $appConfig -> getDbuser();
$_SESSION["dbpass"] =  $appConfig -> getDbpass();
$_SESSION["dbname"] =  $appConfig -> getDbname();


?>
