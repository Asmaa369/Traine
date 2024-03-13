<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "delivery";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // sql2 to create table
   /*$sql2 = "CREATE TABLE trips (
    id INT(50) AUTO_INCREMENT PRIMARY KEY,
    tripNo VARCHAR(10),
    busDepartureTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ,
    arrivalTimeToDestination TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ,
    tripDestination VARCHAR(50),
    StudentNo INT(10))";*/
    $sql3 = "CREATE TABLE driver (
        id INT(50) AUTO_INCREMENT PRIMARY KEY,
        driverID VARCHAR(10),
        driverName VARCHAR(50),
        phoneNo VARCHAR(50),
        driverLicense VARCHAR(50)
       )";
  
  // use exec() because no results are returned
  //$conn->exec($sql2);
  //echo "table trips created successfully<br>";
  $conn->exec($sql3);
  echo "table driver created successfully<br>";
} catch(PDOException $e) {
  //echo $sql2 . "<br>" . $e->getMessage();
  echo $sql3 . "<br>" . $e->getMessage();
}

$conn = null;
?>