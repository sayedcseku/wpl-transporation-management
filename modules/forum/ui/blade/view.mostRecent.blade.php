<?php

include_once UTILITY.'class.util.php';
include_once MODULES_FORUM.'bao/class.mostRecentbao.php';

$_MostRecentBAO = new MostRecentBAO();
$_DB = DBUtil::getInstance();
$Discussion = new Discussion();


//echo '<br> log:: exit blade.searchDiscussion.php';

?>