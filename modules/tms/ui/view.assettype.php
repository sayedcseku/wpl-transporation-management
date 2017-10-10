<?php

include_once 'blade/view.assettype.blade.php';
include_once COMMON.'class.common.php';

?>

<div class="panel panel-default">

    <div class="panel-heading">Asset Type</div>

    <div class="panel-body">

        <div id="form">
            <form method="post" class="form-horizontal">

                <div class="form-group">
                    <label class="control-label col-sm-2" for="tName">Type Name:</label>
                    <div class="col-sm-10">
                        <input type="text" name="typeName" placeholder="Type Name" value="<?php
                        if(isset($_GET['edit'])) echo $globalUser->getTypeName();  ?>" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="typeSpecs">Specifications: </label>
                    <div class="col-sm-10">
                        <input type="text" name="typeSpecs" placeholder="Specifications" value="<?php
                        if(isset($_GET['edit'])) echo $globalUser->getSpecs();  ?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <?php
                        if(isset($_GET['edit']))
                        {
                            ?>
                            <button type="submit" value="update" name="update">update</button>
                            <?php
                        }
                        else
                        {
                            ?>
                            <button type="submit" value="request" name="request">save</button>
                            <?php
                        }
                        ?>
                    </div>
                </div>

            </form>

        </div>
    </div>

    <div class="panel-body">

    <table class="table table-bordered">
    <?php


    $Result = $_AssetBao->getAllAssetType();

    //if DAO access is successful to load all the users then show them one by one
    if($Result->getIsSuccess()){

        $AssetTypeList = $Result->getResultObject();
        ?>
        <tr>
            <th>Type Name</th>
            <th>Specifications</th>

        </tr>
        <?php
        for($i = 0; $i < sizeof($AssetTypeList); $i++) {
            $AssetType = $AssetTypeList[$i];
            ?>
            <tr>
                <td><?php echo $AssetType->getTypeName(); ?></td>
                <td><?php echo $AssetType->getSpecs(); ?></td>

                <td>
                    <a href="?edit=<?php echo $AssetType->getAtId(); ?>" onclick="return confirm('sure to edit !'); " >edit</a>
                </td>
                <td>
                    <a href="?del=<?php echo $AssetType->getAtId(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
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
