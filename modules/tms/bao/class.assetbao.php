<?php
include_once './util/class.util.php';
include_once '/../dao/class.assetdao.php';

class AssetBao{
	private $_DB;
	private $_AssetDao;

	function AssetBao()
	{
		$this->_AssetDao = new AssetDao();
	}

	public function newAssetTypeRequest($AssetType)
	{

		$Result = new Result();
		$Result = $this->_AssetDao->newAssetTypeRequest($AssetType);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.newAssetTypeRequest()");

		return $Result;

	}

	public function newAssetRequest($Asset){

		$Result = new Result();
		$Result = $this->_AssetDao->newAssetRequest($Asset);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.createAsset()");

		return $Result;


	}
	public function getAllAsset(){

		$Result = new Result();
		$Result = $this->_AssetDao->getAllAsset();
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.createAsset()");

		return $Result;


	}
	public function getAllAssetType(){

		$Result = new Result();
		$Result = $this->_AssetDao->getAllAssetType();
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.getAllAssetType()");

		return $Result;


	}
	public function getAsset($Asset){

		$Result = new Result();
		$Result = $this->_AssetDao->getAsset($Asset);
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.createAsset()");

		return $Result;


	}
	public function getAssetType($AssetType){

		$Result = new Result();
		$Result = $this->_AssetDao->getAssetType($AssetType);
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.getAssetType()");

		return $Result;


	}
	public function updateAsset($Asset){

        $Result = new Result();
        $Result = $this->_AssetDao->updateAsset($Asset);

        if(!$Result->getIsSuccess())
            $Result->setResultObject("Database failure in AssetBao.updateAsset()");

        return $Result;
    }
	public function updateAssetType($AssetType){

        $Result = new Result();
        $Result = $this->_AssetDao->updateAssetType($AssetType);

        if(!$Result->getIsSuccess())
            $Result->setResultObject("Database failure in AssetBao.updateAssetType()");

        return $Result;
    }
    public function deleteAsset($Asset){

		$Result = new Result();
		$Result = $this->_AssetDao->deleteAsset($Asset);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.deleteAsset()");

		return $Result;

	}
	public function deleteAssetType($AssetType){

		$Result = new Result();
		$Result = $this->_AssetDao->deleteAssetType($AssetType);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.deleteAssetType()");

		return $Result;

	}
}

 ?>
