<?php
include_once 'blade/view.assignment.blade.php';
include_once './common/class.common.php';
?>
<div class="panel panel-default">

    <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
        <b>Assign</b></div>
    <br>
    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">


    			<div class="form-group">
                  	<label class="control-label col-sm-0" for="selectAsset">Select Asset:</label>
                    <br>
                    <br>
                  	<div class="col-sm-12">

                        <?php
                        // this block of code prints the list box of roles with current assigned  roles

                        $var = '<select name="selectAsset" class="form-control" id="select-from-types" multiple>';
                        $Result = $_AssignBao->getAllAsset();

                        if(isset($Result)){

                           for ($i=0; $i < sizeof($Result); $i++) {

                                $Asset = $Result[$i];

                                $var = $var. '<option value="'.$Asset['id'].'"';


                                $var = $var.'>'.'Asset Type: '.$Asset['type_name'].', Company Name: '.$Asset['company_name'].'</option>';

                            }

                            $var = $var.'</select>';
                        }
                        echo $var;
                        ?>

    			  	</div>
    			</div>

			<div class="form-group">
              	<label class="control-label col-sm-0" for="txtDriver">Select Driver:</label>
                <br>
                <br>
              	<div class="col-sm-12">

						    <?php
						    // this block of code prints the list box of roles with current assigned  roles

						    $var = '<select name="txtDriver" class="form-control" id="select-from-roles" multiple>';
							$Result = $_AssignBao->getAllDrivers();
								//if DAO access is successful to load all the Roles then show them one by one
							if(isset($Result)){


						       for ($i=0; $i < sizeof($Result); $i++) {


						    		$var = $var. '<option value="'.$Result[$i]['userid'].'"';
                                    $fullname = $Result[$i]['firstname']. " ". $Result[$i]['lastname'];
						          	$var = $var.'>'.$fullname.'</option>';

								}

								$var = $var.'</select>';
							}
							echo $var;
							?>
				</div>
			</div>
            <div class="form-group">
              	<label class="control-label col-sm-0" for="txtHelper">Select Helper:</label>
                <br>
                <br>
              	<div class="col-sm-12">

						    <?php
						    // this block of code prints the list box of roles with current assigned  roles

						    $var = '<select name="txtHelper" class="form-control" id="select-from-roles" multiple>';
							$Result = $_AssignBao->getAllHelpers();
								//if DAO access is successful to load all the Roles then show them one by one
							if(isset($Result)){


						       for ($i=0; $i < sizeof($Result); $i++) {


						    		$var = $var. '<option value="'.$Result[$i]['userid'].'"';
                                    $fullname = $Result[$i]['firstname']. " ". $Result[$i]['lastname'];
						          	$var = $var.'>'.$fullname.'</option>';

								}

								$var = $var.'</select>';
							}
							echo $var;
							?>
				</div>
			</div>

            <div class="form-group">
              	<label class="control-label col-sm-0" for="txtRoute">Select Route:</label>
                <br>
                <br>
              	<div class="col-sm-12">

						    <?php
						    // this block of code prints the list box of roles with current assigned  roles

						    $var = '<select name="txtRoute" class="form-control" multiple>';
							$Result = $_AssignBao->getAllRoute();
								//if DAO access is successful to load all the Roles then show them one by one
							if(isset($Result)){


						       for ($i=0; $i < sizeof($Result); $i++) {


						    		$var = $var. '<option value="'.$Result[$i]['id'].'"';
                                    $fullname = $Result[$i]['start']. " - ".$Result[$i]['via'].' - '. $Result[$i]['dest'];
						          	$var = $var.'>'.$fullname.'</option>';

								}

								$var = $var.'</select>';
							}
							echo $var;
							?>
				</div>
			</div>



	        <div class="form-group">
              <div align = "center">

						<?php
						if(isset($_GET['edit']))
						{
							?>
							<button type="submit" value="update" class="btn btn-primary" name="update">update</button>
							<?php
						}
						else
						{
							?>
							<button type="submit" value="Assign" class="btn btn-primary" name="save">Assign</button>
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


    $Result = $_AssignBao->getAllCombination();

    //if DAO access is successful to load all the users then show them one by one
    if($Result->getIsSuccess()){

        $Combinations = $Result->getResultObject();
        ?>
        <tr style="background-color: rgba(7,71,166,0.62)">
            <th>Asset</th>
            <th>Asset's Company</th>
            <th>Driver</th>
            <th>Helper</th>
            <th>Route</th>
            <th style="color: darkred">Delete</th>
        </tr>
        <?php
        $var1= $_AssignBao->getAsset();
        for($i = 0; $i < sizeof($Combinations); $i++) {
            $Combination = $Combinations[$i];

            ?>
            <tr>
                <td>
                    <a href="asset.php?edit=<?php echo $Combination->getAssetId() ?> "> <?php echo $var1[$i]['typename'] ?> </a>
                </td>
                <td>
                    <?php echo $var1[$i]['company_name'] ?>
                </td>
                <td>
                    <a href="user.php?edit=<?php echo $Combination->getDriverId() ?> "> <?php echo $_AssignBao->getUser($Combination->getDriverId()) ?> </a>
                </td>
                <td>
                    <a href="user.php?edit=<?php echo $Combination->getHelperId() ?> "> <?php echo $_AssignBao->getUser($Combination->getHelperId()) ?> </a>
                </td>

                <td>
                    <a href="route.php?edit=<?php echo $Combination->getRouteId() ?> "> <?php echo $_AssignBao->getRoute($Combination->getRouteId()) ?> </a>
                </td>

                <td>
                    <a class="text-danger" href="?del=<?php echo $Combination->getCId(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
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
