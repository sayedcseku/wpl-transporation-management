<?php
include_once UTILITY.'class.util.php';
include_once MODULES_TMS.'bao/class.routebao.php';

$_RouteBao = new RouteBao();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();

$globalUser = '';

if(isset($_POST['request']))
{
	$Route = new Route();

	$Route->setStart($_DB->secureInput($_POST['startPoint']));
	$Route->setDest($_DB->secureInput($_POST['destination']));
	$Route->setVia($_DB->secureInput($_POST['viaPoints']));

	$Result = $_RouteBao->newRouteRequest($Route);

	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

}
if(isset($_GET['edit']))
{
	$Route = new Route();
	$Route->setId($_GET['edit']);
	$globalUser = $_RouteBao->getRoute($Route)->getResultObject(); //reading the user object from the result object
}

/*updating an existing user information*/
if(isset($_POST['update']))
{
	$Route = new Route();
	$Route->setId ($_GET['edit']);
    $Route->setStart($_POST['startPoint']);
    $Route->setDest($_POST['destination']);
    $Route->setVia($_POST['viaPoints']);

	$Result = $_RouteBao->updateRoute($Route);
	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

	header("Location:".PageUtil::$ROUTES);
}

if(isset($_GET['del']))
{

	$Route = new Route();
	$Route->setId($_GET['del']);
	$_RouteBao->deleteRoute($Route); //reading the user object from the result object

	header("Location:".PageUtil::$ROUTES);
}
if(isset($_GET['editPoint']))
{
	$id = $_GET['editPoint'];
	$globalUser = $_RouteBao->getPoint($id); //reading the user object from the result object
}

if(isset($_POST['updatePoint']))
{
	$id = $_GET['editPoint'];
    $Point = $_POST['Point'];
    $lat = $_POST['latitude'];
    $lng = $_POST['longitude'];

	$Result = $_RouteBao->updatePoint($id,$Point,$lat,$lng);

}

echo '<br> log:: exit blade.route.php';
 ?>
