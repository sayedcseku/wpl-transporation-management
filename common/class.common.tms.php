<?php
//include_once 'class.util.user.php';


class Asset{
    private $_id;
    private $_asset_type;
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
    public function getAssetType()
    {
        return $this->_asset_type;
    }

    /**
     * Set the value of Asset Type
     *
     * @param mixed _asset_type
     *
     * @return self
     */
    public function setAssetType($_asset_type)
    {
        $this->_asset_type = $_asset_type;

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

class route{
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

class combination{


}

?>
