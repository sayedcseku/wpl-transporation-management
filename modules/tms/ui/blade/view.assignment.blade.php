<?php
include_once UTILITY.'class.util.php';

include_once MODULES_TMS.'bao/class.assignbao.php';
include_once MODULES_TMS.'bao/class.assetbao.php';

$_AssignBao = new AssignBao();

$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();


$globalUser = '';
$SearchResult='init';
if(isset($_POST['search']))
{
    $searchToken = trim($_POST['txtSearch']);

    $SearchResult = $_AssignBao->searchEverything($searchToken);

    //print_r($SearchResult);

    //header("Location:".PageUtil::$COMBO_VIEW);

}
if(isset($_POST['save']))
{
	$Combination = new Combination();

	$Combination->setAssetId($_DB->secureInput($_POST['selectAsset']));
	$Combination->setDriverId($_DB->secureInput($_POST['txtDriver']));
	$Combination->setHelperId($_DB->secureInput($_POST['txtHelper']));
	$Combination->setRouteId($_DB->secureInput($_POST['txtRoute']));

	$Result = $_AssignBao->newAssignRequest($Combination);

	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

	header("Location:".PageUtil::$COMBO);

}
if(isset($_GET['del']))
{

	$Combination = new Combination();
	$Combination->setCId($_GET['del']);
	$_AssignBao->deleteCombination($Combination); //reading the user object from the result object

	header("Location:".PageUtil::$COMBO);
}


?>
