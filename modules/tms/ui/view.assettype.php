<?php

include_once 'blade/view.assettype.blade.php';
include_once COMMON.'class.common.php';

?>

<div class="panel panel-default">

    <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
        <b>Asset Type</b></div>
    <br>
    <div class="panel-body">

        <div id="form">
            <form method="post" class="form-horizontal">

                <div class="form-group">
                    <label class="control-label col-sm-3" for="tName">Type Name:</label>
                    <div class="col-sm-9">
                        <input type="text" name="typeName" class="form-control" placeholder="Type Name" value="<?php
                        if(isset($_GET['edit'])) echo $globalUser->getTypeName();  ?>" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3" for="typeSpecs">Specifications: </label>
                    <div class="col-sm-9">
                        <input type="text" name="typeSpecs" class="form-control" placeholder="Specifications" value="<?php
                        if(isset($_GET['edit'])) echo $globalUser->getSpecs();  ?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <?php
                        if(isset($_GET['edit']))
                        {
                            ?>
                            <button type="submit" class="btn btn-primary" value="update" name="update">update</button>
                            <?php
                        }
                        else
                        {
                            ?>
                            <button type="submit" class="btn btn-primary" value="request" name="request">save</button>
                            <?php
                        }
                        ?>
                    </div>
                </div>

            </form>

        </div>
    </div>

    <div class="panel-body">

    <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">
    <?php

    $Result = $_AssetBao->getAllAssetType();

    //if DAO access is successful to load all the users then show them one by one
    if($Result->getIsSuccess()){

        $AssetTypeList = $Result->getResultObject();
        ?>
        <tr style="background-color: rgba(7,71,166,0.62)">
            <th>Type Name</th>
            <th>Specifications</th>
            <th>Edit</th>
            <th style="color: darkred">Delete</th>
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
                    <a class="text-danger" href="?del=<?php echo $AssetType->getAtId(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
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
