
<?php
session_start();
$_SESSION["destory"] = "1";

header("Location:  ../menu/dashboard.php");

exit();

?>
