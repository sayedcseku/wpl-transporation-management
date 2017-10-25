<?php
include_once 'blade/view.assets.blade.php';
include_once './common/class.common.php';

?>



<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>All Assets</b></div>
<br>
<div class="panel panel-body">

    <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">
        <?php

        $state = 'none';

        $Result = $_AssetBao->getAllAsset($state);

        //if DAO access is successful to load all the users then show them one by one
        if(isset($Result)){


            ?>
            <tr style="background-color: rgba(7,71,166,0.62)">
                <th>Asset Type</th>
                <th>Company Name</th>
                <th>Specifications</th>

            </tr>
            <?php
            for($i = 0; $i < sizeof($Result); $i++) {

                ?>
                <tr>
                    <td>
                        <?php echo $Result[$i]['type_name'] ?>
                    </td>
                    <td><?php echo $Result[$i]['company_name']; ?></td>
                    <td><?php echo $Result[$i]['specs']; ?></td>
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