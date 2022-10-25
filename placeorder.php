<?php
include('config/connection.php');
session_start();
$userId = $_SESSION['auth_user']['user_id'];
$username = $_SESSION['auth_user']['name'];
$useremail = $_SESSION['auth_user']['email'];

$place = "INSERT INTO orders (user_id, prod_id, prod_qty) SELECT user_id, prod_id, prod_qty FROM carts WHERE user_id = '$userId'";
$place_run = mysqli_query($conn,$place);

$place1 = "UPDATE orders SET name = '$username', email = '$useremail' WHERE user_id = '$userId'";
$place1_run = mysqli_query($conn,$place1);

$prodid = "SELECT prod_id FROM orders WHERE user_id='$userId'";
$prodid_run = mysqli_query($conn,$prodid);
$fetch = mysqli_fetch_array($prodid_run);



echo ("<script LANGUAGE='JavaScript'>
    alert('Please enter your details precisely');
    </script>");
sleep(2);
    echo ("<script LANGUAGE='JavaScript'>
    window.location.href='https://rzp.io/l/6jWlEu6q7';
    </script>");

?>