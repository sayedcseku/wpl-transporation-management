<?php

include_once 'blade/view.new_assets.blade.php';
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
					<?php
  				  if(isset($_GET['edit'])){
  				  ?>
  				  <input type="text" name="assetType" class="form-control" placeholder="Asset Identity" value="<?php
  					if(isset($_GET['edit'])) echo $globalUser->getAssetType();  ?>/>

  				<?php
  				}
  				else {

  				?>
  					 <input type="text" name="assetType" class="form-control" placeholder="Asset Identity"/>
  				<?php } ?>

			  	</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="comName">Company Name:</label>
              	<div class="col-sm-6">
				<input type="text" name="comName" class="form-control" placeholder="Company Name"  required/>
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="liscenceNo">Liscence No:</label>
              	<div class="col-sm-6">
			  	<input type="text" name="liscenceNo" class="form-control" placeholder="Liscence No" required/>

			  	</div>
			</div>


			<div class="form-group">
              	<label class="control-label col-sm-4" for="isRented">Is it Rented:</label>
              	<div class="col-sm-6">

						<select name="isRented" class="form-control" id="select-from-roles" required>
							<option selected disabled>Select Option</option>
							<option value="true">Yes</option>
							<option value="false">No</option>
						</select>
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-4" for="r_cost">Rent Cost:</label>
              	<div class="col-sm-6">
			  	<input type="text" name="r_cost" class="form-control" placeholder="Rent Cost" required/>

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
