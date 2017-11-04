<?php

include_once 'blade/view.routes.blade.php';
include_once COMMON. 'class.common.php';

?>
<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>All Routes</b></div>
<br>
<div class="panel panel-body">

    <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">
        <?php


        $Result = $_RouteBao->getAllRoute();

        //if DAO access is successful to load all the users then show them one by one
        if($Result->getIsSuccess()){

            $RouteList = $Result->getResultObject();
            ?>
            <tr style="background-color: rgba(7,71,166,0.62)">
                <th>Route No</th>
                <th>Starting Point</th>
                <th>Via</th>
                <th>Destination</th>

            </tr>
            <?php
            for($i = 0; $i < sizeof($RouteList); $i++) {
                $Route = $RouteList[$i];
                ?>
                <tr>
                    <td><?php echo $Route->getId(); ?></td>
                    <td><?php echo $Route->getStart(); ?></td>
                    <td><?php echo $Route->getVia(); ?></td>
                    <td><?php echo $Route->getDest(); ?></td>
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
