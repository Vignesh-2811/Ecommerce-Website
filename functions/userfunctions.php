<?php
session_start();
include('config/connection.php');


function getAllActive($table)
{
    global $conn;
    $query = "SELECT * FROM $table WHERE status='0' ";
    return $query_run = mysqli_query($conn,$query);
}

function getOrders($table)
{
    global $conn;
    $userId = $_SESSION['auth_user']['user_id'];
    $query = "SELECT * FROM $table WHERE user_id='$userId'";
    return $query_run = mysqli_query($conn,$query);


}

function getCartItems()
{
    global $conn;
    $userId = $_SESSION['auth_user']['user_id'];
    $query = "SELECT c.id as cid, c.prod_id, c.prod_qty, p.id as pid, p.name, p.image, p.selling_price 
    FROM carts c, products p WHERE c.prod_id=p.id AND c.user_id='$userId' ORDER BY c.id DESC ";
    return $query_run = mysqli_query($conn,$query);
}

function subTotal($prid, $sub)
{

    global $conn;
    $userId = $_SESSION['auth_user']['user_id'];
    $subtotal= "UPDATE carts SET sub_total='$sub' WHERE prod_id='$prid' AND user_id='$userId'";
    $subtotal_run = mysqli_query($conn,$subtotal);

    $totalc = "SELECT sub_total FROM carts WHERE user_id='$userId'";
    $hi = $total_run = mysqli_query($conn,$totalc);
    $total = 0;
    $a=array(0);
    foreach ($hi as $su){
        $sum = $su['sub_total'];
        $sum = doubleval($sum);
        array_push($a,$sum);
        $total = array_sum($a);       

    }
    return $total;

}

function getSlugActive($table, $slug)
{
    global $conn;
    $query = "SELECT * FROM $table WHERE slug ='$slug' AND status='0' LIMIT 1";
    return $query_run = mysqli_query($conn, $query);
}

function getProdByCategory($category_id)
{
    global $conn;
    $query = "SELECT * FROM products WHERE category_id ='$category_id' AND status='0' ";
    return $query_run = mysqli_query($conn, $query);
}

function getIDActive($table, $id)
{
    global $conn;
    $query = "SELECT * FROM $table WHERE id ='$id' AND status='0' ";
    return $query_run = mysqli_query($conn, $query);
}

function redirect($url, $message)
{
    $_SESSION['message'] = $message;
    header('Location: '.$url);
    exit();
}

?>