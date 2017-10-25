<?php
include_once './util/class.util.php';
include_once MODULES_TMS.'dao/class.assigndao.php';

class AssignBao{
    private $_DB;
    private $_AssignBao;
    private $_AssignDao;

    function AssignBao()
    {
        $this->_AssignDao = new AssignDao();

    }

    public function searchEverything($searchToken)
    {
        $Result = $this->_AssignDao->searchEverything($searchToken);

        if(isset($Result))
         return $Result;

    }
    public function newAssignRequest($Combination)
	{

		$Result = new Result();
		$Result = $this->_AssignDao->newAssignRequest($Combination);

		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssignBao.newAssignRequest()");

		return $Result;

	}
    public function getAllCombination(){

		$Result = new Result();
		$Result = $this->_AssignDao->getAllCombination();
        if(!$Result->getIsSuccess())
            $Result->setResultObject("Database failure in AssignBao.getAllCombination()");

        return $Result;

	}
    public function getAsset($id){

		$Result = new Result();
		$Result = $this->_AssignDao->getAsset($id);

        return $Result;

	}
    public function getAllAsset(){

		$Result = new Result();
		$Result = $this->_AssignDao->getAllAsset();

        return $Result;

	}

    public function getAllDrivers()
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->getAllDrivers();

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.getAllDrivers()");

        return $Result;


    }
    public function getAllHelpers()
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->getAllHelpers();

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.getAllDrivers()");

        return $Result;


    }
    public function getAllRoute()
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->getAllRoute();

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.getAllDrivers()");

        return $Result;


    }
    public function getUser($id)
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->getUser($id);

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.getUser()");

        return $Result;


    }

    public function getRoute($id)
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->getRoute($id);

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.getRoute()");

        return $Result;


    }
    public function deleteCombination($Combination)
    {
        //$Result = new Result();
        $Result = $this->_AssignDao->deleteCombination($Combination);

        if(!isset($Result))
        $Result->setResultObject("Database failure in _AssignDao.deleteCombination($Combination)");

        return $Result;


    }

}
?>
