<?php

include_once UTILITY.'class.util.php';
include_once MODULES_FORUM.'bao/class.searchDiscussionbao.php';

$_searchDiscussionBAO = new searchDiscussionBAO();
$_DB = DBUtil::getInstance();
$Discussion = new Discussion();

if(isset($_POST['search']))
{
	 
     $Discussion->setTag($_DB->secureInput($_POST['txtSearch']));

     //$_searchDiscussionBAO->readTagwiseDiscussion($Discussion);
     $tag = $Discussion->getTag();

     header("Location:".PageUtil::$DISCUSSION_SEARCH."?tag=".$tag);

}


//echo '<br> log:: exit blade.searchDiscussion.php';

?>