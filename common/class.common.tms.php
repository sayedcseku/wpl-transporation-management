<?php
//include_once 'class.util.user.php';


class Asset{
    private $_id;
    private $_at_id;
    private $_company_name;
    private $_isRented;
    private $_rent_cost;
    private $_liscence_no;


    public function getId()
    {
        return $this->_id;
    }

    /**
     * Set the value of Id
     *
     * @param mixed _id
     *
     * @return self
     */
    public function setId($_id)
    {
        $this->_id = $_id;

        return $this;
    }

    /**
     * Get the value of Asset Type
     *
     * @return mixed
     */
    public function getAtId()
    {
        return $this->_at_id;
    }

    /**
     * Set the value of Asset Type
     *
     * @param mixed _asset_type
     *
     * @return self
     */
    public function setAtId($_at_id)
    {
        $this->_at_id = $_at_id;

        return $this;
    }

    /**
     * Get the value of Company Name
     *
     * @return mixed
     */
    public function getCompanyName()
    {
        return $this->_company_name;
    }

    /**
     * Set the value of Company Name
     *
     * @param mixed _company_name
     *
     * @return self
     */
    public function setCompanyName($_company_name)
    {
        $this->_company_name = $_company_name;

        return $this;
    }

    /**
     * Get the value of Is Rented
     *
     * @return mixed
     */
    public function getIsRented()
    {
        return $this->_isRented;
    }

    /**
     * Set the value of Is Rented
     *
     * @param mixed _isRented
     *
     * @return self
     */
    public function setIsRented($_isRented)
    {
        $this->_isRented = $_isRented;

        return $this;
    }

    /**
     * Get the value of Rent Cost
     *
     * @return mixed
     */
    public function getRentCost()
    {
        return $this->_rent_cost;
    }

    /**
     * Set the value of Rent Cost
     *
     * @param mixed _rent_cost
     *
     * @return self
     */
    public function setRentCost($_rent_cost)
    {
        $this->_rent_cost = $_rent_cost;

        return $this;
    }

    /**
     * Get the value of Liscence No
     *
     * @return mixed
     */
    public function getLiscenceNo()
    {
        return $this->_liscence_no;
    }

    /**
     * Set the value of Liscence No
     *
     * @param mixed _liscence_no
     *
     * @return self
     */
    public function setLiscenceNo($_liscence_no)
    {
        $this->_liscence_no = $_liscence_no;

        return $this;
    }


}

class Route{
    private $_id;
    private $_start;
    private $_dest;
    private $_via;

    public function getId()
    {
        return $this->_id;
    }

    /**
     * Set the value of Id
     *
     * @param mixed _id
     *
     * @return self
     */
    public function setId($_id)
    {
        $this->_id = $_id;

        return $this;
    }

    /**
     * Get the value of Start
     *
     * @return mixed
     */
    public function getStart()
    {
        return $this->_start;
    }

    /**
     * Set the value of Start
     *
     * @param mixed _start
     *
     * @return self
     */
    public function setStart($_start)
    {
        $this->_start = $_start;

        return $this;
    }

    /**
     * Get the value of Dest
     *
     * @return mixed
     */
    public function getDest()
    {
        return $this->_dest;
    }

    /**
     * Set the value of Dest
     *
     * @param mixed _dest
     *
     * @return self
     */
    public function setDest($_dest)
    {
        $this->_dest = $_dest;

        return $this;
    }

    /**
     * Get the value of Via
     *
     * @return mixed
     */
    public function getVia()
    {
        return $this->_via;
    }

    /**
     * Set the value of Via
     *
     * @param mixed _via
     *
     * @return self
     */
    public function setVia($_via)
    {
        $this->_via = $_via;

        return $this;
    }



}

class Combination{
    private $_cid;
    private $_asset_id;
    private $_route_id;
    private $_driver_id;
    private $_helper_id;




    /**
     * Get the value of Asset Id
     *
     * @return mixed
     */
    public function getAssetId()
    {
        return $this->_asset_id;
    }

    /**
     * Set the value of Asset Id
     *
     * @param mixed _asset_id
     *
     * @return self
     */
    public function setRouteId($_route_id)
    {
        $this->_route_id = $_route_id;

        return $this;
    }
    public function getRouteId()
    {
        return $this->_route_id;
    }

    /**
     * Set the value of Asset Id
     *
     * @param mixed _asset_id
     *
     * @return self
     */
    public function setAssetId($_asset_id)
    {
        $this->_asset_id = $_asset_id;

        return $this;
    }

    /**
     * Get the value of Driver Id
     *
     * @return mixed
     */
    public function getDriverId()
    {
        return $this->_driver_id;
    }

    /**
     * Set the value of Driver Id
     *
     * @param mixed _driver_id
     *
     * @return self
     */
    public function setDriverId($_driver_id)
    {
        $this->_driver_id = $_driver_id;

        return $this;
    }

    /**
     * Get the value of Helper Id
     *
     * @return mixed
     */
    public function getHelperId()
    {
        return $this->_helper_id;
    }

    /**
     * Set the value of Helper Id
     *
     * @param mixed _helper_id
     *
     * @return self
     */
    public function setHelperId($_helper_id)
    {
        $this->_helper_id = $_helper_id;

        return $this;
    }


    /**
     * Get the value of Set the value of Via
     *
     * @return mixed
     */
    public function getCid()
    {
        return $this->_cid;
    }

    /**
     * Set the value of Set the value of Via
     *
     * @param mixed _cid
     *
     * @return self
     */
    public function setCid($_cid)
    {
        $this->_cid = $_cid;

        return $this;
    }

}
class AssetType{
    private $_at_id;
    private $_type_name;
    private $_specs;




    /**
     * Get the value of Set the value of Set the value of Via
     *
     * @return mixed
     */
    public function getAtId()
    {
        return $this->_at_id;
    }

    /**
     * Set the value of Set the value of Set the value of Via
     *
     * @param mixed _at_id
     *
     * @return self
     */
    public function setAtId($_at_id)
    {
        $this->_at_id = $_at_id;

        return $this;
    }

    /**
     * Get the value of Type Name
     *
     * @return mixed
     */
    public function getTypeName()
    {
        return $this->_type_name;
    }

    /**
     * Set the value of Type Name
     *
     * @param mixed _type_name
     *
     * @return self
     */
    public function setTypeName($_type_name)
    {
        $this->_type_name = $_type_name;

        return $this;
    }

    /**
     * Get the value of Specs
     *
     * @return mixed
     */
    public function getSpecs()
    {
        return $this->_specs;
    }

    /**
     * Set the value of Specs
     *
     * @param mixed _specs
     *
     * @return self
     */
    public function setSpecs($_specs)
    {
        $this->_specs = $_specs;

        return $this;
    }

}

?>
