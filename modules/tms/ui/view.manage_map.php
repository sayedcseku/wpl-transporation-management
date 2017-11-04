<?php
include_once 'blade/view.routes.blade.php';
include_once COMMON.'class.common.php';

$Result = $_RouteBao->getAllRoute();
$Points = array();

//if DAO access is successful to load all the users then show them one by one
if($Result->getIsSuccess()){
    $RouteList = $Result->getResultObject();

     function isAvailable($value,$Points)
    {

        for ($i=0; $i <sizeof($Points) ; $i++){
            if (strcmp($Points[$i],$value)==0) {

                return true;
            }

        }
        return false;
    }

for ($j=0; $j <sizeof($RouteList) ; $j++) {
    $Route = $RouteList[$j];
    $Start = $Route->getStart();
    $via = $Route->getVia();
    $dest = $Route->getDest();

    if(isset($Start)){
        $value = trim(strtok (  $Start , '(' ));
        if(!isAvailable($value,$Points))
            $Points[]=  $value;
    }
    if(isset($dest)){
        $value = trim(strtok (  $dest , '(' ));
        if(!isAvailable($value,$Points))
            $Points[]=  $value;
    }



    if(isset($via)){
        $i=0;
        $fp=0;
        $val1 = '';
        $l = strlen($via);
        while($i<$l){
            if($via[$i]=='('){
                $fp = 1;
                $value= trim($val1);
                if(!isAvailable($value,$Points))
                    $Points[]=  $value;
                $val1 = '';

            }
            if($via[$i]=='-'){
                $fp = 0;
                $i++;
                continue;

            }
            if($fp!=1){
                $val1 = $val1. $via[$i];
            }

            $i++;
        }

    }

    echo "\n";
}
sort($Points);
print_r ($Points);
$Result = $_RouteBao->setLocations($Points);
}
 ?>


 <div class="panel panel-default">


     <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
         <b>All Points</b></div>
     <br>
     <div class="panel-body">

 	<div id="form">
 		<form method="post" class="form-horizontal">

 			<div class="form-group">
               	<label class="control-label col-sm-2" for="startPoint">Point NAME:</label>
               	<div class="col-sm-10">

   				  <input type="text" name="Point" class="form-control" placeholder="Point Name" value="<?php
   					if(isset($_GET['editPoint'])) echo $globalUser['location_name'];  ?>"/>


 			  	</div>
 			</div>

 			<div class="form-group">
               	<label class="control-label col-sm-2" for="Latitude">Latitude:</label>
               	<div class="col-sm-10">
                     <input type="text" name="latitude" class="form-control" placeholder="Latitude in DD Coordinate" value="<?php
     					if(isset($_GET['editPoint'])) echo $globalUser['latitude'];  ?>"/>
 				</div>
 			</div>

 			<div class="form-group">
               	<label class="control-label col-sm-2" for="Longitude">Longitude:</label>
               	<div class="col-sm-10">
                     <input type="text" name="longitude" class="form-control" placeholder="Longitude in DD Coordinate" value="<?php
     					if(isset($_GET['edit{Point}'])) echo $globalUser['longitude'];  ?>" required />

 			  	</div>
 			</div>

 	        <div class="form-group">
               <div class="col-sm-offset-3 col-sm-8">
 				  <?php
 				  if(isset($_GET['editPoint'])){
 				  ?>
 				  <button type="submit" class="btn btn-primary" value="update" name="updatePoint">Update Request</button>

 				<?php
 				}
 				else {

 				?>
 					 <button type="submit" class="btn btn-primary" value="request" name="requestPoint">Submit Request</button>
 				<?php } ?>



 			    </div>
             </div>
 		</form>

 	</div>
 	</div>

 </div>

 <div class="container">
 <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">
 <?php


 $Result = $_RouteBao->getAllPoint();

 //if DAO access is successful to load all the users then show them one by one
 if(isset($Result)){

     ?>
     <tr style="background-color: rgba(7,71,166,0.62)">
         <th>Point</th>
         <th>Latitude</th>
         <th>Longitude</th>
         <th>Edit</th>
     </tr>
     <?php
     for($i = 0; $i < sizeof($Result); $i++) {
         $Point = $Result[$i];
         ?>
         <tr>
             <td><?php echo $Point['location_name']; ?></td>
             <td><?php echo $Point['latitude']; ?></td>
             <td><?php echo $Point['longitude']; ?></td>

             <td>
                 <a href="?editPoint=<?php echo $Point['id']; ?>" onclick="return confirm('sure to edit !'); " >edit</a>
             </td>
         </tr>
         <?php

     }

 }
 else{

     echo $Result->getResultObject();
 }

 ?>
 </table>
 </div>
