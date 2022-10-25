<?php

include('functions/userfunctions.php'); 
include('includes/header.php');
include('authenticate.php');
session_start();
?>

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
        <a href="index.php" class="text-white" >    
        Home /
        </a>
        <a href="cart.php" class="text-white">
             Cart </a> </h6>
    </div>
</div>


<div class="py-5">
    <div class="container">
        <div class="">
        <div class="row">
            <div class="col-md-12">
            <div class="row align-items-center">
                        <div class="col-md-4">
        
                            <h6>Product</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Price</h6>
                        </div>
                        
                        <div class="col-md-2">
                            <h6>Quantity</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Sub Total</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Remove</h6>
                        </div>
                    </div>
                    <div id="mycart">

                <?php $items = getCartItems(); 
                
                foreach ($items as $citem)
                {

                    ?>
                    <div class="card product_data shadow-sm mb-3">
                    <div class="row align-items-center">
                        <div class="col-md-2">
                            <img src="uploads/<?= $citem['image'] ?>" alt="Image" width="80px">
                        </div>
                        <div class="col-md-2">
                            <h5><?= $citem['name'] ?></h5>
                        </div>
                        <div class="col-md-2">
                        <h5>Rs <?= $citem['selling_price'] ?></h5>
                        </div>
                        <div class="col-md-2">
                            <input type="hidden" class="prodId" value="<?= $citem['prod_id'] ?>"> 
                        <div class="input-group mb-3" style="width:130px";>
                                <button class="input-group-text decrement-btn updateQty">-</button>
                                <input type="text" class="form-control input-qty text-center bg-white" value="<?= $citem['prod_qty'] ?>" disabled>
                                <button class="input-group-text increment-btn updateQty">+</button>
                                
                               </div>
                        </div>
                    <?php

                    $prid=$citem['prod_id'];
                    $sub=$citem['prod_qty'] * $citem['selling_price'];
                    $total = subTotal($prid,$sub);
                   
                    ?>

                        <div class="col-md-2">
                            <h6><?= $sub?></h6>
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-danger btn-sm deleteItem" value="<?= $citem['cid'] ?>">
                            <i class="fa fa-trash me-2 "></i>Remove</button>
                        </div>
                    </div>
                    </div>

                    <?php
                }
                
                ?>
                <div class="row">
                    <div class="col-md-6">
                    <div class="input-group flex-nowrap">
                    <span class="input-group-text" id="addon-wrapping">Order Total</span>
                    <input type="text" class="form-control" value= "Rs <?= $total ?> /-" disabled aria-label="Username" aria-describedby="addon-wrapping">
                </div>
                    </div>
                    <div class="col-md-6">
                    <a href="placeorder.php" role="button" class="btn btn-success" target="_blank">Checkout</a>
                    </div>
                </div>
               
            

                    </div>
            </div>
        </div>
        </div>
    </div>
</div>

<?php
?>
 
    
<?php
  
  include('includes/footer.php'); 

 ?>