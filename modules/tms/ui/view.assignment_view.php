<?php
include_once 'blade/view.assignment.blade.php';
include_once COMMON.'class.common.php';
?>
<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>Search Box</b></div>
<br>
<div class="panel panel-body">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div id="imaginary_container">
                    <form action="" method="post" class="form-horizontal">
                    <div class="input-group stylish-input-group">
                        <input type="text" class="form-control" name="txtSearch" placeholder="Search" >
                        <span class="input-group-addon">
                        <button type="submit" name="search">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </span>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="">

        </div>
    </div>

</div>

<?php
if($SearchResult != 'init')
{
    ?>
    <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
        <b>Search Results</b></div>
    <br>
    <?php
    echo "Total Matches: ".(sizeof($SearchResult['asset'])+sizeof($SearchResult['user'])+
    sizeof($SearchResult['route']));



 ?>
<br>
<?php
if(sizeof($SearchResult['asset'])<1)
    echo "No User Result";
    else {
        echo "Total Asset  Matches: ".(sizeof($SearchResult['asset']));

$var1 = ' <div class="container">';
$var1.=    ' <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)"> ';
    $var1.=   ' <b>Search Results About Asset</b></div>';
    $var1.=' <br>';

    $var1.= ' <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">';


        $var1.=   '  <tr style="background-color: rgba(7,71,166,0.62)">';

            $var1.= '    <th>Asset Type</th>';
            $var1.=     ' <th>Company Name</th>';
            $var1.=   '  <th>Specifications</th>';

            $var1.= ' </tr>';

            echo $var1;

            for($i = 0; $i < sizeof($SearchResult['asset']); $i++) {

                ?>
                <tr>
                    <td>
                        <?php echo $SearchResult['asset'][$i]['type_name'] ?>
                    </td>
                    <td><?php echo $SearchResult['asset'][$i]['company_name']; ?></td>
                    <td><?php echo $SearchResult['asset'][$i]['specs']; ?></td>
                </tr>
<?php
            }




    $var1=' </table>';
$var1.= ' </div>';
echo $var1;

} ?>

<br>
<?php
if(sizeof($SearchResult['user'])<1)
    echo "No User Result";
    else {
        echo "Total User  Matches: ".(sizeof($SearchResult['user']));

$var1 = ' <div class="container">';
$var1.=    ' <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)"> ';
    $var1.=   ' <b>Search Results About Users</b></div>';
    $var1.=' <br>';

    $var1.= ' <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">';


        $var1.=   '  <tr style="background-color: rgba(7,71,166,0.62)">';

            $var1.= '   <th>User ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Role</th> ';


            $var1.= ' </tr>';

            echo $var1;

            for($i = 0; $i < sizeof($SearchResult['user']); $i++) {

                ?>
                <tr>
                    <td>
                        <?php echo $SearchResult['user'][$i]['userid'] ?>
                    </td>
                    <td><?php echo $SearchResult['user'][$i]['firstname']; ?></td>
                    <td><?php echo $SearchResult['user'][$i]['lastname']; ?></td>
                    <td><?php echo $SearchResult['user'][$i]['rolename']; ?></td>
                </tr>
<?php
            }




    $var1=' </table>';
$var1.= ' </div>';
echo $var1;

} ?>


<br> <br><br><br>
<?php
if(sizeof($SearchResult['route'])<1)
    echo "No Route Result";
    else {
        echo "Total Route  Matches: ".(sizeof($SearchResult['route']));

$var1 = ' <div class="container">';
$var1.=    ' <div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)"> ';
    $var1.=   ' <b>Search Results About Users</b></div>';
    $var1.=' <br>';

    $var1.= ' <table class="table table-bordered table-striped" style="border: 1px solid;border-color: rgba(7,71,166,0.62)">';


        $var1.=   '  <tr style="background-color: rgba(7,71,166,0.62)">';

            $var1.= '
            <th>Starting Point</th>
            <th>Via</th>
            <th>Destination</th> ';


            $var1.= ' </tr>';

            echo $var1;

            for($i = 0; $i < sizeof($SearchResult['route']); $i++) {

                ?>
                <tr>

                    <td><?php echo $SearchResult['route'][$i]['start']; ?></td>
                    <td><?php echo $SearchResult['route'][$i]['via']; ?></td>
                    <td><?php echo $SearchResult['route'][$i]['dest']; ?></td>
                </tr>
<?php
            }




    $var1=' </table>';
$var1.= ' </div>';
echo $var1;

}
}?>

<div class="panel-heading text-center" style="background-color: rgba(7,71,166,0.62)">
    <b>Khulna University Transport Details</b></div>
<br>
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
                <th>Asset's Specification</th>
                <th>Driver</th>
                <th>Helper</th>
                <th>Route</th>
            </tr>
            <?php

            for($i = 0; $i < sizeof($Combinations); $i++) {
                $Combination = $Combinations[$i];
                $var1= $_AssignBao->getAsset($Combination->getAssetId());
                ?>
                <tr>
                    <td>
                        <a href="assets.php?edit=<?php echo $Combination->getAssetId() ?> "> <?php echo $var1[0]['typename'] ?> </a>
                    </td>
                    <td>
                        <?php echo $var1[0]['company_name'] ?>
                    </td>
                    <td>
                        <?php echo $var1[0]['specs'] ?>
                    </td>
                    <td>
                        <a href="user.php?edit=<?php echo $Combination->getDriverId() ?> "> <?php echo $_AssignBao->getUser($Combination->getDriverId()) ?> </a>
                    </td>
                    <td>
                        <a href="user.php?edit=<?php echo $Combination->getHelperId() ?> "> <?php echo $_AssignBao->getUser($Combination->getHelperId()) ?> </a>
                    </td>

                    <td>
                        <a href="routes.php?edit=<?php echo $Combination->getRouteId() ?> "> <?php echo $_AssignBao->getRoute($Combination->getRouteId()) ?> </a>
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
