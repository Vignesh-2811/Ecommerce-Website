<?php


include('includes/header.php');
include('E:\XAMPP\htdocs\Clover Clothing Co\functions\userfunctions.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Products</h4>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $products = getOrders("orders");
                            if(mysqli_num_rows($products) > 0)
                            {
                                foreach($products as $item)
                                {
                                    ?>
                                         <tr>
                                            <td>
                                                <img src="uploads/<?= $item['image']; ?>" width="50px" height="50px" alt="<?= $item['image'];?>">
                                                <?= "\t"?>
                                                <?=$item['prod_name']; ?>
                                            </td>
                                            <td>
                                                <?= $item['prod_qty']?>
                                            </td>
                                            <td>
                                            <form action="admin/code.php" method="POST">
                                                    <input type="hidden" name="product_id" value="<?= $item['id']; ?>">
                                                    <button type="submit" class="btn btn-sm btn-danger" name="delete_item_btn">Delete</button>
                                                </form>
                                            </td>
                                            <td>
                                             
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