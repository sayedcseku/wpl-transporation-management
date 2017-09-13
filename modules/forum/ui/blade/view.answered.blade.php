<?php

include_once UTILITY.'class.util.php';
include_once MODULES_FORUM.'bao/class.answeredbao.php';

$_AnsweredBAO = new AnsweredBAO();
$_DB = DBUtil::getInstance();
$Discussion = new Discussion();


//echo '<br> log:: exit blade.searchDiscussion.php';

?>