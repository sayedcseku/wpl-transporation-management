<?php
include_once 'blade/view.assets.blade.php';
include_once './common/class.common.php';
include_once 'blade/view.new_assets.blade.php';

?>
<div class="panel-body">

<table class="table table-bordered">
<?php


$Result = $_AssetBao->getAllAsset();

//if DAO access is successful to load all the users then show them one by one
if($Result->getIsSuccess()){

    $AssetList = $Result->getResultObject();
    ?>
    <tr>
        <th>AssetType</th>
        <th>CompanyName</th>
        <th>isRented</th>
        <th>RentCost</th>
        <th>LiscenceNo</th>

    </tr>
    <?php
    for($i = 0; $i < sizeof($AssetList); $i++) {
        $Asset = $AssetList[$i];
        ?>
        <tr>
            <td><?php echo $Asset->getAssetType(); ?></td>
            <td><?php echo $Asset->getCompanyName(); ?></td>
            <td><?php echo $Asset->getIsRented(); ?></td>
            <td><?php echo $Asset->getRentCost(); ?></td>
            <td><?php echo $Asset->getLiscenceNo(); ?></td>
            <td>
                <a href="new_asset.php?edit=<?php echo $Asset->getId(); ?>" onclick="return confirm('sure to edit !'); " >edit</a>
            </td>
            <td>
                <a href="?del=<?php echo $Asset->getId(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
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
