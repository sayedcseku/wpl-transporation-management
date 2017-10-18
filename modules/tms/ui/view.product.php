<div class="panel-body">

<table class="table table-bordered">
<?php
$Result = $_AssignBao->getAllDrivers();
if(isset($Result)){

    ?>
    <tr>
        <th>User Id</th>
        <th>Firstname</th>
        <th>Lastname</th>

        <th>Role ID</th>
        <th>Role Name</th>

    </tr>
    <?php
    for($i = 0; $i < sizeof($Result); $i++) {
        $row = $Result[$i];
        ?>
        <tr>
            <td><?php echo $row['userid']; ?></td>
            <td><?php echo $row['firstname']; ?></td>
            <td><?php echo $row['lastname']; ?></td>
            <td><?php echo $row['roleid']; ?></td>
            <td><?php echo $row['rolename']; ?></td>

            <td>
                <a href="transport_route.php?page=products&action=add&id=<?php echo $row['userid'] ?>">Add to cart</a>
            </td>

        </tr>
        <?php
    }
}
else{

    echo $Result->getResultObject(); //giving failure message
}

?>
