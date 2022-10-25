<?php


include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Orders
                    <a href="download-orders.php" class="btn btn-primary float-end">Download Orders</a>
                    </h4>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>User ID</th>
                                <th>Name</th>
                                <th>E-mail</th>
                                <th>Product ID</th>
                                <th>Product Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $orders = getAll("orders");
                            if(mysqli_num_rows($orders) > 0)
                            {
                                foreach($orders as $item)
                                {
                                    ?>
                                         <tr>
                                            <td> <?= $item['id']; ?> </td>
                                            <td><?= $item['user_id']; ?></td>
                                            <td>
                                            <?= $item['name']; ?>
                                            </td>
                                            <td>
                                                <?= $item['email']; ?>
                                            </td>
                                            <td>
                                            <?= $item['prod_id']; ?>
                                            </td>
                                            
                                            <td>
                                                <?= $item['prod_qty']; ?>
                                            </td>
                                            
                                        </tr>

                                    <?php
                                }
                            }
                            else
                            {
                                echo "No records found";
                            }


                            ?>
                           
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>