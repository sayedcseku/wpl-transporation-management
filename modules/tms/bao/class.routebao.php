<?php
include_once UTILITY.'class.util.php';
include_once MODULES_TMS.'dao/class.routedao.php';

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
	public function setLocations($Points){

		$Result = new Result();
		$Result = $this->_RouteDao->setLocations($Points);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssetBao.setLocations($Points)");

		return $Result;

	}
	public function getAllPoint(){

		$Result = new Result();
		$Result = $this->_RouteDao->getAllPoint();

		if(!isset($Result))
			$Result->setResultObject("Database failure in RouteBao.getAllPoint()");

		return $Result;

	}
	public function getPoint($id){
		$Result = new Result();
		$Result = $this->_RouteDao->getPoint($id);

		if(!isset($Result))
			$Result->setResultObject("Database failure in RouteBao.getPoint($id)");

		return $Result;
	}
	public function updatePoint($id,$Point,$lat,$lng){
		$Result = new Result();
		$Result = $this->_RouteDao->updatePoint($id,$Point,$lat,$lng);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RouteBao.updatePoint($id,$Point,$lat,$lng)");

		return $Result;
	}
}

 ?>
