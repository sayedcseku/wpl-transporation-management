<?php
include_once COMMON.'class.common.php';
include_once UTILITY.'class.util.php';

class AssetDao{

    private $_DB;
    private $_Asset;
    private $_AssetType;

    function AssetDao(){

        $this->_DB = DBUtil::getInstance();
        $this->_Asset = new Asset();
        $this->_AssetType = new AssetType();

    }

    public function newAssetRequest($Asset){

        $at_id = $Asset->getAtId();
        $company_name = $Asset->getCompanyName();
        $isRented = $Asset->getIsRented();
        $rent_cost  = $Asset->getRentCost();
        $liscence_no  = $Asset->getLiscenceNo();

        $SQL = "INSERT INTO tbl_assets(at_id,company_name,isRented,rent_cost,liscence_no)
        VALUES('$at_id','$company_name','$isRented','$rent_cost','$liscence_no')";

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

    public function newAssetTypeRequest($AssetType){

        $type_name = $AssetType->getTypeName();
        $specs = $AssetType->getSpecs();


        print_r($AssetType);
        $SQL = "INSERT INTO tbl_asset_type(type_name,specs)
        VALUES('$type_name','$specs')";

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

    public function getAllAsset($state){

        $AssetList = array();

        $check='none';
        if($state =='own')
            $check = 'false';
        else if($state =='hired')
            $check = 'true';
        if($check!='none')
        $this->_DB->doQuery("SELECT * FROM tbl_assets inner JOIN tbl_asset_type on
            tbl_assets.at_id =tbl_asset_type.at_id WHERE  isRented = '$check'");
        else{
            $this->_DB->doQuery("SELECT * FROM tbl_assets inner JOIN tbl_asset_type on
            tbl_assets.at_id =tbl_asset_type.at_id");
            $rows = $this->_DB->getAllRows();

            return $rows;
        }


        $rows = $this->_DB->getAllRows();


        for($i = 0; $i < sizeof($rows); $i++) {
            $row = $rows[$i];
            $this->_Asset = new Asset();

            $this->_Asset->setId ( $row['id']);
            $this->_Asset->setAtId( $row['at_id'] );
            $this->_Asset->setCompanyName ( $row['company_name'] );
            $this->_Asset->setIsRented ( $row['isRented'] );
            $this->_Asset->setRentCost( $row['rent_cost'] );
            $this->_Asset->setLiscenceNo( $row['liscence_no'] );
            $this->_AssetType->setTypeName($row['type_name']);
            $this->_AssetType->setSpecs($row['specs']);


            $AssetList[]=$this->_Asset;


        }
        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($AssetList);

        return $Result;

    }

    public function getAllAssetType(){

        $AssetTypeList = array();

        $this->_DB->doQuery("SELECT * FROM tbl_asset_type");

        $rows = $this->_DB->getAllRows();

        for($i = 0; $i < sizeof($rows); $i++) {
            $row = $rows[$i];
            $this->_AssetType = new AssetType();

            $this->_AssetType->setAtId ( $row['at_id']);
            $this->_AssetType->setTypeName ( $row['type_name'] );
            $this->_AssetType->setSpecs ( $row['specs'] );

            $AssetTypeList[]=$this->_AssetType;


        }
        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($AssetTypeList);

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
        $this->_Asset->setAtId( $row['at_id'] );
        $this->_Asset->setCompanyName( $row['company_name'] );
        $this->_Asset->setIsRented( $row['isRented'] );
        $this->_Asset->setRentCost( $row['rent_cost'] );
        $this->_Asset->setLiscenceNo( $row['liscence_no'] );



        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($this->_Asset);

        return $Result;

    }

    public function getAssetType($AssetType){


        $SQL = "SELECT * FROM tbl_asset_type where at_id ='".$AssetType->getAtId()."'";
        $this->_DB->doQuery($SQL);


        //reading the top row for this Role from the database
        $row = $this->_DB->getTopRow();

        $this->_AssetType = new AssetType();


        //preparing the Role object
        $this->_AssetType->setAtId ( $row['at_id']);
        $this->_AssetType->setTypeName( $row['type_name'] );
        $this->_AssetType->setSpecs( $row['specs'] );


        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($this->_AssetType);

        return $Result;

    }

    public function updateAsset($Asset){



        $SQL = "UPDATE tbl_assets SET at_id='".$Asset->getAtId()."',
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
    public function updateAssetType($AssetType){



        $SQL = "UPDATE tbl_asset_type SET type_name='".$AssetType->getTypeName()."',
			specs='".$AssetType->getSpecs()."'

			WHERE at_id='".$AssetType->getAtId()."'";

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
    public function deleteAssetType($AssetType){

        $this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);

        $SQL_delete = "DELETE from tbl_asset_type where at_id ='".$AssetType->getAtId()."'";
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
