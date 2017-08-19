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
	public function updateAsset($Asset){

        $Result = new Result();
        $Result = $this->_AssetDao->updateAsset($Asset);

        if(!$Result->getIsSuccess())
            $Result->setResultObject("Database failure in AssetBao.updateAsset()");

        return $Result;
    }
    public function deleteAsset($Asset){

		$Result = new Result();
		$Result = $this->_AssetDao->deleteAsset($Asset);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.deleteAsset()");

		return $Result;

	}
}

 ?>
