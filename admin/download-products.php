<?php  
include('../config/connection.php');
$sql = "SELECT id, category_id, name, slug, small_description, description, original_price, selling_price FROM products";  
$setRec = mysqli_query($conn, $sql);  
$columnHeader = '';  
$columnHeader = "id" . "\t" . "Category ID" . "\t" . "Name" . "\t" . "Slug" . "\t" . "small_description" . "\t" . "description" . "\t" . "Original Price" . "\t" . "Selling Price" . "\t";  
$setData = '';  
  while ($rec = mysqli_fetch_row($setRec)) {  
    $rowData = '';  
    foreach ($rec as $value) {  
        $value = '"' . $value . '"' . "\t";  
        $rowData .= $value;  
    }  
    $setData .= trim($rowData) . "\n";  
}  
  
header("Content-type: application/octet-stream");  
header("Content-Disposition: attachment; filename=Products.xls");  
header("Pragma: no-cache");  
header("Expires: 0");  

  echo ucwords($columnHeader) . "\n" . $setData . "\n";  
 ?> 