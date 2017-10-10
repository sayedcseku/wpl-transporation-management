<?php
include_once './util/class.util.php';
include_once '/../../bao/class.assetbao.php';


$_AssetBao = new AssetBao();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();


$globalUser = '';

if(isset($_POST['request']))
{
	$AssetType = new AssetType();

	$AssetType->setTypeName($_DB->secureInput($_POST['typeName']));
	$AssetType->setSpecs($_DB->secureInput($_POST['typeSpecs']));


	$Result = $_AssetBao->newAssetTypeRequest($AssetType);

	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

        echo "hello";
	header("Location:".PageUtil::$ASSET_TYPE);

}
if(isset($_GET['edit']))
{
	$AssetType = new AssetType();
	$AssetType->setAtId($_GET['edit']);
	$globalUser = $_AssetBao->getAssetType($AssetType)->getResultObject(); //reading the user object from the result object
}
if(isset($_POST['update']))
{
	$AssetType = new AssetType();
	$AssetType->setAtId ($_GET['edit']);
    $AssetType->setTypeName ( $_POST['typeName'] );
    $AssetType->setSpecs ( $_POST['typeSpecs'] );


	$Result = $_AssetBao->updateAssetType($AssetType);
	if($Result->getIsSuccess())
		echo '<strong>'.$Result->getResultObject().'</strong>';

	header("Location:".PageUtil::$ASSET_TYPE);
}


if(isset($_GET['del']))
{

	$AssetType = new AssetType();
	$AssetType->setAtId($_GET['del']);
	$_AssetBao->deleteAssetType($AssetType); //reading the user object from the result object

	header("Location:".PageUtil::$ASSET_TYPE);
}



echo '<br> log:: exit blade.assettype.php';
$_Log->log(LogUtil::$DEBUG,"exit blade.assettype.php");

 ?>
