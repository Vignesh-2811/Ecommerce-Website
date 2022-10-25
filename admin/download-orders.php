<?php  
include('../config/connection.php');
$sql = "SELECT * FROM orders";  
$setRec = mysqli_query($conn, $sql);  
$columnHeader = '';  
$columnHeader = "id" . "\t" . "User ID" . "\t" . "Name" . "\t" . "E-Mail" . "\t" . "Product ID" . "\t" . "Quantity" . "\t";  
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
header("Content-Disposition: attachment; filename=Orders.xls");  
header("Pragma: no-cache");  
header("Expires: 0");  

  echo ucwords($columnHeader) . "\n" . $setData . "\n";  
 ?> 