<?php
include_once './util/class.util.php';
include_once '/../../bao/class.assetbao.php';

$_AssetBao = new AssetBao();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();

if(isset($_POST['request']))
{
	$Asset = new Asset();

	$Asset->setAssetType($_DB->secureInput($_POST['assetType']));
	$Asset->setCompanyName($_DB->secureInput($_POST['comName']));
	$Asset->setIsRented($_DB->secureInput($_POST['isRented']));
	$Asset->setRentCost($_DB->secureInput($_POST['r_cost']));
	$Asset->setLiscenceNo($_DB->secureInput($_POST['liscenceNo']));

	$Result = $_AssetBao->newAssetRequest($Asset);

	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

}
if(isset($_GET['edit']))
{
	$Asset = new Asset();
	$Asset->setId($_GET['edit']);
	$globalUser = $_AssetBao->getAsset($Asset)->getResultObject(); //reading the user object from the result object
}

/*updating an existing user information*/
if(isset($_POST['update']))
{
	$Asset = new Asset();

    $Asset->setAssetType ( $_POST['AssetType'] );
    $Asset->setCompanyName ( $_POST['CompanyName'] );
    $Asset->setIsRented ( $_POST['isRented'] );
    $Asset->setRentCost( $_POST['RentCost'] );
    $Asset->setLiscenceNo( $_POST['LiscenceNo'] );

	$_AssetBAO->updateAsset($Asset);

	header("Location:".PageUtil::$USER);
}

echo '<br> log:: exit blade.user_new.php';
 ?>
