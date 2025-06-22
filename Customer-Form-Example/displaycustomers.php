<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Learning Plan 6 Project</title>
</head>

<body>
<?php
 
echo "Sales Database  <br/><br/>";
// (1) Open the database connection
$connection = mysql_connect("localhost","baltaza1_webdev3","password1");
 
// (2) Select the sales database
mysql_select_db("baltaza1_sales", $connection);
 


//(3) Show Records from sales database
while($row = mysql_fetch_array($result))
  {
  echo "Customer ID: " . $row['customer_id']. "<br/>";
  echo "First Name: " . $row['customer_first']. "<br/>";
  echo "Last Name: " . $row['customer_last']. "<br/>";
  echo "Address: " . $row['address']. "<br/>";
  echo "City: " . $row['city']. "<br/>";
  echo "State: " . $row['state']. "<br/>";
  echo "Zip: " . $row['zip']. "<br/>";
  echo "Phone: " . $row['phone']. "<br/>";
  echo "Email: " . $row['email']. "<br/>";
  echo "Sales Representative: " . $row['sales_rep']. "<br/>";
  
  
  
  echo "<br/><br/>";
  }
?>



</body>
</html>