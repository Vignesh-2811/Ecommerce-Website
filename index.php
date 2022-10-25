<?php
include('includes/header.php');
include('functions/userfunctions.php'); 
session_start();
?>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <?php
                if(isset($_SESSION['message']))
                {
                    ?>

                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Hey!</strong> <?= $_SESSION['message']; ?>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <?php
                unset($_SESSION['message']);
                }
            ?>
            </div>
        </div>
    </div>
</div>

<?php
include('includes/banner.php');
include('includes/aboutus.php');
?>


<p id="collections"></p>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            
    <h1>Our Collections</h1>
    <hr>
    <div class="row">
    <?php 
    $categories = getAllActive("categories");

    if(mysqli_num_rows($categories) > 0)
    {
        foreach($categories as $item)
        {
            ?>
            <div class="col-md-3 mb-2">
                <a href="products.php?category=<?= $item['slug']; ?>">
                <div class="card shadow">
                    <div class="card-body">
                        <img src="uploads/<?= $item['image']; ?>" alt="Category Image" class="w-100" height="175em" width="350em">
                    <h4 class="text-center"><?= $item['name']; ?></h4>

                    </div>
                </div>
                </a>
            </div>
            


            <?php
        }
    }
    else
    {
        echo "No data available";
    }
    
    
    ?>
    </div>
    
            </div>
        </div>
    </div>
</div>

   
 
   
    
<?php
  
  include('includes/form.php');
  include('includes/oldfooter.php');
  include('includes/footer.php'); 

 ?>