<?php
  include('../middleware/adminMiddleware.php');
  include('includes/header.php');
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <?php
                if(isset($_GET['id']))
                {
                $id = $_GET['id'];
                $product = getById("products",$id);

                if(mysqli_num_rows($product) > 0)
                {
                    $data = mysqli_fetch_array($product);
                    ?>
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Product
                            <a href="all-products.php" class="btn btn-primary float-end">Back</a>
                            </h4>
                        </div>
                        <div class="card-body">
                            <form action="code.php" method="POST" enctype="multipart/form-data" >
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="mb-0">Select Category</label>
                                    <select name="category_id" class="form-select mb-2">
                                        <option selected>Select Category</option>
                                        <?php
                                            $categories = getAll("categories");

                                            if(mysqli_num_rows($categories) > 0)
                                            {
                                                foreach ($categories as $item) {
                                                    ?>
                                                        <option value="<?= $item['id'];?>" <?= $data['category_id'] == $item['id']?'selected':''?>><?= $item['name'];?></option>
                                                        <?php
                                                }

                                            }
                                            else
                                            {
                                                echo "No category available";
                                            }


                                            
                                        ?>
                                        
                                    </select>
                                </div>
                                <input type="hidden" name="product_id" value="<?= $data['id']; ?>"
                                <div class="col-md-6">
                                    <label class="mb-0">Name</label>
                                    <input type="text"name="name" required value="<?= $data['name'];?>" placeholder="Enter Product Name" class="form-control mb-2">
                                </div>
                                <div class="col-md-6">
                                    <label class="mb-0">Slug</label>
                                    <input type="text" name="slug" required value="<?= $data['slug'];?>" placeholder="Enter Slug" class="form-control mb-2">
                                </div>
                                <div class="col-md-12">
                                    <label class="mb-0">Small Description</label>
                                    <textarea name="small_description" required rows="3" placeholder="Enter small description" class="form-control mb-2"><?= $data['small_description'];?></textarea>
                                </div>
                                <div class="col-md-12">
                                    <label class="mb-0">Description</label>
                                    <textarea name="description" rows="3" required placeholder="Enter description" class="form-control mb-2"><?= $data['description'];?></textarea>
                                </div>
                                <div class="col-md-6">
                                    <label class="mb-0">Original Price</label>
                                    <input type="text"name="original_price" required value="<?= $data['original_price'];?>" placeholder="Original Price" class="form-control mb-2">
                                </div>
                                <div class="col-md-6">
                                    <label class="mb-0">Selling Price</label>
                                    <input type="text" name="selling_price" required value="<?= $data['selling_price'];?>" placeholder="Selling Price" class="form-control mb-2">
                                </div>
                                <div class="col-md-12">
                                    <label class="mb-0">Upload Image</label>
                                    <input type="hidden" name="old_image" value="<?= $data['image']; ?>">
                                    <input type="file" name="image" class="form-control mb-2">
                                    <label class="mb-0">Current Image</label>
                                    <img src="../uploads/<?= $data['image'] ?>" alt="Product Image" height="50px" width="50px">
                                </div>
                                <div class="row">
                                <div class="col-md-6">
                                    <label class="mb-0">Quantity</label>
                                    <input type="number" name="qty" required value="<?= $data['qty'];?>" placeholder="Enter Quantity" class="form-control mb-2">
                                </div>
                                <div class="col-md-3">
                                    <label class="mb-0">Status</label>
                                    <input type="checkbox" <?= $data['status'] == '0'?'':'checked' ?> name="status">
                                </div>
                                <div class="col-md-3">
                                    <label class="mb-0">Trending</label>
                                    <input type="checkbox" <?= $data['trending'] == '0'?'':'checked' ?> name="trending">
                                </div>

                                </div>
                                <div class="col-md-12">
                                    <label class="mb-0">Meta Title</label>
                                    <input type="text" name="meta_title" required value="<?= $data['meta_title'];?>" placeholder="Enter meta title" class="form-control mb-2">
                                </div>
                                <div class="col-md-12">
                                    <label class="mb-0">Meta Description</label>
                                    <textarea name="meta_description" required rows="3" placeholder="Enter meta description" class="form-control mb-2"><?= $data['meta_description'];?></textarea>
                                </div>         
                                <div class="col-md-12">
                                    <label class="mb-0">Meta Keywords</label>
                                    <textarea name="meta_keywords" rows="3" required placeholder="Enter meta keywords" class="form-control mb-2"><?= $data['meta_keywords'];?></textarea>
                                </div>
                                
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary" name="update_product_btn">Update</button>
                                </div>
                        </div>
                        </form>
                    </div>
                    <?php

                }
                else
                {
                    echo "Product not found for givenn id";
                }
            
                }
            else
            {
                echo "Id missing from url";
            }
            ?>
        </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>