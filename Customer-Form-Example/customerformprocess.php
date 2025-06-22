<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Learning Plan 6 Project</title>
</head>

<body>





<?php

/*	!!Reference!!

 	Customer's First Name: <input type="text" name="c_Fname"/><br/>
    Customer's Last Name: <input type="text" name="c_Lname"/><br/>
    Address: <input type="text" name="c_Address"/><br/>
   	City: <input type="text" name="c_City"/><br/>
    State: <input type="text" name="c_State"/><br/>
    Zip: <input type="number" name="c_Zip"/><br/>
    Phone: <input type="number" name="c_Phone"/><br/>
    Email: <input type="text" name="c_Email"/><br/>
    Sales Representative: <input type="text" name="c_SR"/><br/>

*/
 
 if(isset($_GET['submit']))
    {
		
		$fname2 = $_GET['c_Fname'];
        $lname2 = $_GET['c_Lname'];
        $address2 = $_GET['c_Address'];
		$city2 = $_GET['c_City'];
		$state2 = $_GET['c_State'];
		$zip2 = $_GET['c_Zip'];
		$phone2 = $_GET['c_Phone'];
		$email2 = $_GET['c_Email'];
		$SR2 = $_GET['c_SR'];
		
		
				
		}
 
 
 
 
 
// (1) Open the database connection
$connection = mysql_connect("localhost","baltaza1_webdev3","password1");
 
// (2) Select the sales database
mysql_select_db("baltaza1_sales", $connection);
 

// INSERT QUERY EXAMPLE
//mysql_query("INSERT INTO Persons (FirstName, LastName, Age)
//VALUES ('Peter', 'Griffin',35)");


mysql_query("INSERT INTO customers (customer_id, customer_first, customer_last, address, city, state, zip, phone, email, sales_rep)

VALUES (null,'$fname2', '$lname2','$address2','$city2','$state2', $zip2, $phone2, '$email2', $SR2)");




mysql_close($connection); 


Echo "Insert Query Completed"; 
  
?>






</body>
</html>