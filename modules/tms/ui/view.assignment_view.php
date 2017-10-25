<?php
include_once 'blade/view.assignment.blade.php';
include_once './common/class.common.php';
?>
<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>Search Box</b></div>
<br>
<div class="panel panel-body">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div id="imaginary_container">
                    <form action="" method="post" class="form-horizontal">
                    <div class="input-group stylish-input-group">
                        <input type="text" name="txtSearch" placeholder="Search" >
                        <span class="input-group-addon">
                        <button type="submit" name="search">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </span>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        
    </div>

</div>
<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>Khulna University Transport Details</b></div>
<br>
<div class="panel-body">

    <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">
        <?php


        $Result = $_AssignBao->getAllCombination();

        //if DAO access is successful to load all the users then show them one by one
        if($Result->getIsSuccess()){

            $Combinations = $Result->getResultObject();
            ?>
            <tr style="background-color: rgba(7,71,166,0.62)">
                <th>Asset</th>
                <th>Asset's Company</th>
                <th>Asset's Specification</th>
                <th>Driver</th>
                <th>Helper</th>
                <th>Route</th>
            </tr>
            <?php

            for($i = 0; $i < sizeof($Combinations); $i++) {
                $Combination = $Combinations[$i];
                $var1= $_AssignBao->getAsset($Combination->getAssetId());
                ?>
                <tr>
                    <td>
                        <a href="assets.php?edit=<?php echo $Combination->getAssetId() ?> "> <?php echo $var1[0]['typename'] ?> </a>
                    </td>
                    <td>
                        <?php echo $var1[0]['company_name'] ?>
                    </td>
                    <td>
                        <?php echo $var1[0]['specs'] ?>
                    </td>
                    <td>
                        <a href="user.php?edit=<?php echo $Combination->getDriverId() ?> "> <?php echo $_AssignBao->getUser($Combination->getDriverId()) ?> </a>
                    </td>
                    <td>
                        <a href="user.php?edit=<?php echo $Combination->getHelperId() ?> "> <?php echo $_AssignBao->getUser($Combination->getHelperId()) ?> </a>
                    </td>

                    <td>
                        <a href="routes.php?edit=<?php echo $Combination->getRouteId() ?> "> <?php echo $_AssignBao->getRoute($Combination->getRouteId()) ?> </a>
                    </td>

                </tr>
                <?php

            }

        }
        else{

            echo $Result->getResultObject(); //giving failure message
        }

        ?>
    </table>
</div>
