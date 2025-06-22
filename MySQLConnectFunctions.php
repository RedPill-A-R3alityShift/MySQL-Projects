<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>MsQl Functions</title>
</head>

<body>

 <?php
 $userquery = $_GET['custname'];

// (1) Open the database connection
$connection = mysql_connect("localhost","root","");
 
// (2) Select the winestore database
mysql_select_db("databasename", $connection);
 
// (3) Run the query on the winestore through the connection
$SQLQuery = "SELECT * FROM customers WHERE cust_name='$userquery'";
$result = mysql_query ("SELECT * FROM tablename", $connection);
 
// (4) While there are still rows in the result set, fetch the current row into the array $row
while ($row = mysql_fetch_array($result, MYSQL_NUM))
{
    
    // (5) Print out each element in $row, that is, print the values of the attributes
    foreach ($row as $attribute)
    {
        echo "$attribute";
    }
    echo"<br/>";
}
?>


</body>
</html>
