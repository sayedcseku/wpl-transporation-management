<?php

include_once './common/class.common.php';
include_once './util/class.util.php';
include_once 'class.assetdao.php';

class AssignDao{

    private $_Combination;
    private $_User;
    private $_Role;
    private $_Asset;

    function AssignDao(){

        $this->_DB = DBUtil::getInstance();
        $this->_Combination = new Combination();
        $this->_User = new User();
        $this->_Role = new Role();
        $this->_Asset = new Asset();

    }
    public function newAssignRequest($Combination){

        $asset_id = $Combination->getAssetId();
        $driver_id = $Combination->getDriverId();
        $helper_id = $Combination->getHelperId();
        $route_id  = $Combination->getRouteId();

        $SQL = "INSERT INTO tbl_combination(asset_id,route_id,driver_id,helper_id)
        VALUES('$asset_id','$route_id','$driver_id','$helper_id')";

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
    public function getAllCombination(){

        $Combinations = array();

        $this->_DB->doQuery("SELECT * FROM `tbl_combination` ");


        $rows = $this->_DB->getAllRows();

        for($i = 0; $i < sizeof($rows); $i++) {
            $row = $rows[$i];
            $this->_Combination = new Combination();

            $this->_Combination->setCId ( $row['id']);
            $this->_Combination->setAssetId ( $row['asset_id'] );
            $this->_Combination->setDriverId ( $row['driver_id'] );
            $this->_Combination->setHelperId ( $row['helper_id'] );
            $this->_Combination->setRouteId ( $row['route_id'] );



            $Combinations[]=$this->_Combination;


        }


        $Result = new Result();
        $Result->setIsSuccess(1);
        $Result->setResultObject($Combinations);

        return $Result;
    }
    public function getAsset(){
        $this->_DB->doQuery("SELECT `company_name` , tbl_asset_type.type_name as typename FROM `tbl_assets` INNER JOIN tbl_asset_type
            ON tbl_assets.at_id = tbl_asset_type.at_id;");

            $rows = $this->_DB->getAllRows();


            return $rows;

        }
        public function getAllAsset(){

            $this->_DB->doQuery("SELECT id, type_name,company_name,liscence_no FROM tbl_assets inner JOIN tbl_asset_type on
                tbl_assets.at_id =tbl_asset_type.at_id");

                $rows = $this->_DB->getAllRows();


                return $rows;

            }

            public function getAllDrivers()
            {
                $SQL = "SELECT
                tbl_user.ID AS userid,
                tbl_user.FirstName AS firstname,
                tbl_user.LastName AS lastname,
                tbl_role.ID AS roleid,
                tbl_role.Name AS rolename
                FROM
                tbl_user
                INNER JOIN
                tbl_user_role
                ON
                tbl_user_role.UserID = tbl_user.ID
                INNER JOIN
                tbl_role
                ON
                tbl_user_role.RoleID = tbl_role.ID
                WHERE
                tbl_role.ID = 'driver';";

                $AssetList = array();

                $this->_DB->doQuery($SQL);

                $rows = $this->_DB->getAllRows();




                return $rows;

            }
            public function getAllHelpers()
            {
                $SQL = "SELECT
                tbl_user.ID AS userid,
                tbl_user.FirstName AS firstname,
                tbl_user.LastName AS lastname,
                tbl_role.ID AS roleid,
                tbl_role.Name AS rolename
                FROM
                tbl_user
                INNER JOIN
                tbl_user_role
                ON
                tbl_user_role.UserID = tbl_user.ID
                INNER JOIN
                tbl_role
                ON
                tbl_user_role.RoleID = tbl_role.ID
                WHERE
                tbl_role.ID = 'helper';";

                $AssetList = array();

                $this->_DB->doQuery($SQL);

                $rows = $this->_DB->getAllRows();




                return $rows;

            }
            public function getAllRoute()
            {
                $SQL = "SELECT `id`, `start`, `dest`, `via` FROM `routes`;";

                $AssetList = array();

                $this->_DB->doQuery($SQL);

                $rows = $this->_DB->getAllRows();




                return $rows;

            }
            public function getRoute($id)
            {
                $SQL = "SELECT `id`, `start`, `dest`, `via` FROM `routes` where id = '$id';";

                $AssetList = array();

                $this->_DB->doQuery($SQL);

                $rows = $this->_DB->getAllRows();

                $route1 = $rows[0]['start'].' - '.$rows[0]['via'].' - '.$rows[0]['dest'];

                return $route1;

            }
            public function getUser($id)
            {


                $SQL = "SELECT
                tbl_user.ID,
                tbl_user.FirstName,
                tbl_user.LastName

                FROM
                tbl_user

                WHERE
                id = '".$id."';";



                $this->_DB->doQuery($SQL);

                $rows = $this->_DB->getAllRows();


                $fullname = $rows[0]['FirstName'].' '.$rows[0]['LastName'];




                return $fullname;

            }

        }

        ?>
