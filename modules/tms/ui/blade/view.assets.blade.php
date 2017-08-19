<?php


include_once './util/class.util.php';
include_once '/../../bao/class.assetbao.php';


$_AssetBao = new AssetBao();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();


$globalUser = '';

/* deleting an existing user */
if(isset($_GET['del']))
{

	$Asset = new Asset();
	$Asset->setId($_GET['del']);
	$_AssetBao->deleteAsset($Asset); //reading the user object from the result object

	header("Location:".PageUtil::$USER);
}


/* reading an existing user information */
if(isset($_GET['edit']))
{
	$Asset = new Asset();
	$Asset->setId($_GET['edit']);
	$globalUser = $_AssetBao->getAllAsset($Asset)->getResultObject(); //reading the user object from the result object
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

echo '<br> log:: exit blade.user.php';
$_Log->log(LogUtil::$DEBUG,"exit blade.assets.php");

?>
