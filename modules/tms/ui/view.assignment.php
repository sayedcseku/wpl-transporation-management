<?php

include_once 'blade/view.assignment.blade.php';
include_once COMMON.'class.common.php';


?>

<div class="panel panel-default">

    <div class="panel-heading">Assignment</div>

    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">


			<div class="form-group">
              	<label class="control-label col-sm-4" for="assignedRoles">Assigned Roles:</label>
              	<div class="col-sm-6">

						    <?php
						    // this block of code prints the list box of roles with current assigned  roles

						    $var = '<select name="assignedRoles[]" class="form-control" id="select-from-roles" multiple>';
							$Result = $_AssignBAO->getAllRoles();
								//if DAO access is successful to load all the Roles then show them one by one
							if($Result->getIsSuccess()){

								$Roles = $Result->getResultObject();

						       for ($i=0; $i < sizeof($Roles); $i++) {

						       		$Role = $Roles[$i];

						    		$var = $var. '<option value="'.$Role->getID().'"';

						       		if(isset($_GET['edit']) && isRoleAvailable($Role,$globalUser->getRoles())) {
						          		$var = $var.' selected="selected"';
						          	}

						          	$var = $var.'>'.$Role->getName().'</option>';

								}

								$var = $var.'</select>';
							}
							echo $var;
							?>
				</div>
			</div>

	</div>

	<div class="panel-body">

	<table class="table table-bordered">
	<?php


	$Result = $_UserBAO->getAllUsers();

	//if DAO access is successful to load all the users then show them one by one
	if($Result->getIsSuccess()){

		$UserList = $Result->getResultObject();
	?>
		<tr>
			<th>University ID</th>
			<th>Email</th>
			<th>Password</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Status</th>
		</tr>
		<?php
		for($i = 0; $i < sizeof($UserList); $i++) {
			$User = $UserList[$i];
			?>
		    <tr>
			    <td><?php echo $User->getUniversityID(); ?></td>
			    <td><?php echo $User->getEmail(); ?></td>
			    <td><?php echo $User->getPassword(); ?></td>
			    <td><?php echo $User->getFirstName(); ?></td>
			    <td><?php echo $User->getLastName(); ?></td>
			    <td><?php echo $User->getStatus(); ?></td>
			    <td>
			    <a href="?edit=<?php echo $User->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a>
			    </td>
			    <td>
			    <a href="?approve=<?php echo $User->getID(); ?>" onclick="return confirm('sure to approve !'); " >approve</a>
			    </td>
			    <td>
			    <a href="?reject=<?php echo $User->getID(); ?>" onclick="return confirm('sure to reject !'); " >reject</a>
			    </td>
			    <td>
			    <a href="?del=<?php echo $User->getID(); ?>" onclick="return confirm('sure to delete !'); " >delete</a>
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

</div>
