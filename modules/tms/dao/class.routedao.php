<?php
include_once './common/class.common.php';
include_once './util/class.util.php';

class RouteDao{

    private $_DB;
    private $_Route;

    function RouteDao(){

        $this->_DB = DBUtil::getInstance();
        $this->_Route = new Route();

    }

    public function newRouteRequest($Route){

        $start = $Route->getStart();
        $dest = $Route->getDest();
        $via = $Route->getVia();



        $SQL = "INSERT INTO routes(start,dest,via)
        VALUES('$start','$dest','$via')";


        //beginning a transaction
        $this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);
        //creating the user
        $SQL = $this->_DB->doQuery($SQL);
        print($start);


        //closing the transaction
        $this->_DB->getConnection()->commit();



        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($SQL);

        return $Result;
    }
    public function getAllRoute(){

        $RouteList = array();

        $this->_DB->doQuery("SELECT * FROM routes");

        $rows = $this->_DB->getAllRows();

        for($i = 0; $i < sizeof($rows); $i++) {
            $row = $rows[$i];
            $this->_Route = new Route();

            $this->_Route->setId ( $row['id']);
            $this->_Route->setStart ( $row['start'] );
            $this->_Route->setDest ( $row['dest'] );
            $this->_Route->setVia ( $row['via'] );





            $RouteList[]=$this->_Route;


        }
        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($RouteList);

        return $Result;

    }
    public function getRoute($Route){


        $SQL = "SELECT * FROM routes where id ='".$Route->getId()."'";
        $this->_DB->doQuery($SQL);

        //reading the top row for this Role from the database
        $row = $this->_DB->getTopRow();

        $this->_Route = new Route();

        //preparing the Role object
        $this->_Route->setId ( $row['id']);
        $this->_Route->setStart( $row['start'] );
        $this->_Route->setDest( $row['dest'] );
        $this->_Route->setVia( $row['via'] );




        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($this->_Route);

        return $Result;

    }

    public function updateRoute($Route){



        $SQL = "UPDATE routes SET start='".$Route->getStart()."',
			dest='".$Route->getDest()."',
			via='".$Route->getVia()."'

			WHERE id='".$Route->getId()."'";

		//beginning a transaction
		$this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);
		//updating the user
		$SQL = $this->_DB->doQuery($SQL);


		//closing the transaction
		$this->_DB->getConnection()->commit();



	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;


    }

    public function deleteRoute($Route){

        //beginning a transaction
        $this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);

        //removing previous Positions

        $SQL_delete = "DELETE from routes where id ='".$Route->getId()."'";
        $SQL_delete = $this->_DB->doQuery($SQL_delete);


        //closing the transaction
        $this->_DB->getConnection()->commit();


        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($SQL_delete);

        return $Result;
    }

}

?>
