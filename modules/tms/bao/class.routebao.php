<?php
include_once './util/class.util.php';
include_once '/../dao/class.routedao.php';

class RouteBao{
	private $_DB;
	private $_RouteDao;

	function RouteBao()
	{
		$this->_RouteDao = new RouteDao();
	}

	public function newRouteRequest($Route){

		$Result = new Result();
		$Result = $this->_RouteDao->newRouteRequest($Route);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RouteDao.newRouteRequest()");

		return $Result;


	}
	public function getAllRoute(){

		$Result = new Result();
		$Result = $this->_RouteDao->getAllRoute();
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RouteDao.getAllRoute()");

		return $Result;


	}
	public function getRoute($Route){

		$Result = new Result();
		$Result = $this->_RouteDao->getRoute($Route);
		//print_r($Result);
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.createAsset()");

		return $Result;


	}
	public function updateRoute($Route){

        $Result = new Result();
        $Result = $this->_RouteDao->updateRoute($Route);

        if(!$Result->getIsSuccess())
            $Result->setResultObject("Database failure in AssetBao.updateAsset()");

        return $Result;
    }
    public function deleteRoute($Route){

		$Result = new Result();
		$Result = $this->_RouteDao->deleteRoute($Route);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.deleteAsset()");

		return $Result;

	}
}

 ?>
