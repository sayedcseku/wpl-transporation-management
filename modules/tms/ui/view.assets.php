<?php
include_once 'blade/view.assets.blade.php';
include_once './common/class.common.php';

?>

<div class="panel panel-default">


    <div class="panel-heading"> New Asset</div>

    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">

			<div class="form-group">
              	<label class="control-label col-sm-4" for="assetType">Asset Type:</label>
              	<div class="col-sm-6">

  				  <input type="text" name="assetType" class="form-control" placeholder="Asset Identity" value="<?php
  					if(isset($_GET['edit'])) echo $globalUser->getAssetType();  ?>"/>


			  	</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="comName">Company Name:</label>
              	<div class="col-sm-6">
                    <input type="text" name="comName" class="form-control" placeholder="Company Name" value="<?php
    					if(isset($_GET['edit'])) echo $globalUser->getCompanyName();  ?>"/>
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="liscenceNo">Liscence No:</label>
              	<div class="col-sm-6">
                    <input type="text" name="liscenceNo" class="form-control" placeholder="Liscence No" value="<?php
    					if(isset($_GET['edit'])) echo $globalUser->getLiscenceNo();  ?>" required />

			  	</div>
			</div>


			<div class="form-group">
              	<label class="control-label col-sm-4" for="isRented">Is it Rented:</label>
              	<div class="col-sm-6">


                    <?php
                    $var = '<select name="isRented" class="form-control" id="select-from-roles" multiple>';
                    $var = $var. '<option selected disabled>Select Option</option>';

                    $op  = array('true','false');
                    for ($i=0; $i < 2; $i++) {

                        $ops= $op[$i];

                        $var = $var. '<option value="'.$ops.'"';

                        if(isset($_GET['edit']) ) {
                            if($globalUser->getIsRented()==$ops){
                                $var = $var.' selected="selected"';
                            }

                        }
                        if($ops=='true'){
                            $var = $var.'>'.'Yes'.'</option>';
                        }

                        else {
                            $var = $var.'>'.'No'.'</option>';

                        }

                    }

                    $var = $var.'</select>';

                    echo $var;

                    ?>
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="r_cost">Rent Cost:</label>
              	<div class="col-sm-6">
                    <input type="text" name="r_cost" class="form-control" placeholder="Rent Cost" value="<?php
                       if(isset($_GET['edit'])) echo $globalUser->getRentCost();  ?>" required/>

			  	</div>
			</div>
	        <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
				  <?php
				  if(isset($_GET['edit'])){
				  ?>
				  <button type="submit" value="update" name="update">Update Request</button>

				<?php
				}
				else {

				?>
					 <button type="submit" value="request" name="request">Submit Request</button>
				<?php } ?>







			    </div>
            </div>
		</form>

	</div>
	</div>

</div>

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
                <a href="?edit=<?php echo $Asset->getId(); ?>" onclick="return confirm('sure to edit !'); " >edit</a>
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
