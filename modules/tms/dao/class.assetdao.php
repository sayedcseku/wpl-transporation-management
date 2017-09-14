<?php
include_once './common/class.common.php';
include_once './util/class.util.php';

class AssetDao{

    private $_DB;
    private $_Asset;

    function AssetDao(){

        $this->_DB = DBUtil::getInstance();
        $this->_Asset = new Asset();

    }

    public function newAssetRequest($Asset){

        $asset_type = $Asset->getAssetType();
        $company_name = $Asset->getCompanyName();
        $isRented = $Asset->getIsRented();
        $rent_cost  = $Asset->getRentCost();
        $liscence_no  = $Asset->getLiscenceNo();

        $SQL = "INSERT INTO tbl_assets(asset_type,company_name,isRented,rent_cost,liscence_no)
        VALUES('$asset_type','$company_name','$isRented','$rent_cost','$liscence_no')";

        //beginning a transaction
        $this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);
        //creating the user
        $SQL = $this->_DB->doQuery($SQL);



        //closing the transaction
        $this->_DB->getConnection()->commit();



        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($SQL);

        return $Result;
    }
    public function getAllAsset(){

        $AssetList = array();

        $this->_DB->doQuery("SELECT * FROM tbl_assets");

        $rows = $this->_DB->getAllRows();

        for($i = 0; $i < sizeof($rows); $i++) {
            $row = $rows[$i];
            $this->_Asset = new Asset();

            $this->_Asset->setId ( $row['id']);
            $this->_Asset->setAssetType ( $row['asset_type'] );
            $this->_Asset->setCompanyName ( $row['company_name'] );
            $this->_Asset->setIsRented ( $row['isRented'] );
            $this->_Asset->setRentCost( $row['rent_cost'] );
            $this->_Asset->setLiscenceNo( $row['liscence_no'] );




            $AssetList[]=$this->_Asset;


        }
        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($AssetList);

        return $Result;

    }
    public function getAsset($Asset){


        $SQL = "SELECT * FROM tbl_assets where id ='".$Asset->getId()."'";
        $this->_DB->doQuery($SQL);

        //reading the top row for this Role from the database
        $row = $this->_DB->getTopRow();

        $this->_Asset = new Asset();

        //preparing the Role object
        $this->_Asset->setId ( $row['id']);
        $this->_Asset->setAssetType( $row['asset_type'] );
        $this->_Asset->setCompanyName( $row['company_name'] );
        $this->_Asset->setIsRented( $row['isRented'] );
        $this->_Asset->setRentCost( $row['rent_cost'] );
        $this->_Asset->setLiscenceNo( $row['liscence_no'] );



        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($this->_Asset);

        return $Result;

    }

    public function updateAsset($Asset){



        $SQL = "UPDATE tbl_assets SET asset_type='".$Asset->getAssetType()."',
			company_name='".$Asset->getCompanyName()."',
			isRented='".$Asset->getIsRented()."',
			rent_cost='".$Asset->getRentCost()."',
			liscence_no='".$Asset->getLiscenceNo()." '
			WHERE ID='".$Asset->getId()."'";

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

    public function deleteAsset($Asset){

        //beginning a transaction
        $this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);

        //removing previous Positions

        $SQL_delete = "DELETE from tbl_assets where id ='".$Asset->getId()."'";
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
