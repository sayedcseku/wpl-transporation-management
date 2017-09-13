<?php

include_once UTILITY.'class.util.php';
include_once MODULES_FORUM.'bao/class.unansweredbao.php';

$_UnansweredBAO = new UnansweredBAO();
$_DB = DBUtil::getInstance();
$Discussion = new Discussion();


//echo '<br> log:: exit blade.searchDiscussion.php';

?>