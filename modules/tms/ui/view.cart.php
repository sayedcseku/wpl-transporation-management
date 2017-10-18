<?php

   if(isset($_POST['submit'])){


   }

?>

<h1>View cart</h1>
<a href="transport_route.php?page=products">Go back to products page</a>
<form method="post" action="transport_route.php?page=cart">

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Identity</th>

        </tr>

        <?php
            $query = $_AssignBao->getDriver($id);
            $row=mysqli_fetch_array($query, MYSQLI_ASSOC)

                        <tr>
                            <td><?php echo $row['userid'] ?></td>

                            <td><?php echo $row['firstname'] ?>$</td>
                            <td><?php echo $row['rolename'] ?>$</td>
                        </tr>
                    <?php

                    }
        ?>

    </table>
    <br />
    <button type="submit" name="submit">Assign Elements</button>
</form>
<br />
<p>To remove an item, set it's quantity to 0. U can't set every item to zero. </p>
