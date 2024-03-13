<!DOCTYPE html>
<html>

<head>
    <title>Trip Data</title>
</head>

<body>
    <center>
        <?php
        echo "<table style='border: solid 1px black;'>";
        echo "<tr><th>id</th><th>tripNo</th><th>busDepartureTime</th><th>arrivalTimeToDestination</th><th>tripDestination</th><th>StudentNo</th><th>driverID</th><th>driverName</th><th>phoneNo</th><th>driverLicense</th></tr>";
        
        class TableRows extends RecursiveIteratorIterator {
          function __construct($it) {
            parent::__construct($it, self::LEAVES_ONLY);
          }
        
          function current() {
            return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
          }
        
          function beginChildren() {
            echo "<tr>";
          }
        
          function endChildren() {
            echo "</tr>" . "\n";
          }
        }

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "delivery";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Taking all values from the form data(input)
        $id = $_REQUEST['id'];
        $tripNo = $_REQUEST['tripNo'];
        $busDepartureTime = $_REQUEST['busDepartureTime'];
        $arrivalTimeToDestination = $_REQUEST['arrivalTimeToDestination'];
        $tripDestination = $_REQUEST['tripDestination'];
        $StudentNo = $_REQUEST['StudentNo'];
        $id1 = $_REQUEST['id'];
        $driverID = $_REQUEST['driverID'];
        $driverName = $_REQUEST['driverName'];
        $phoneNo = $_REQUEST['phoneNo'];
        $driverLicense = $_REQUEST['driverLicense'];


        // We are going to insert the data into trips table
        $sql = "INSERT INTO trips VALUES ('$id','$tripNo','$busDepartureTime','$arrivalTimeToDestination','$tripDestination','$StudentNo')";
        $sql2 = "INSERT INTO driver VALUES ('$id1','$driverID','$driverName','$phoneNo','$driverLicense')";


        // Check if the query is successful
        $conn->exec($sql);
        echo "New record created successfully";
        $conn->exec($sql2);
       //echo "New record created 2 successfully";
       $stmt = $conn->prepare("SELECT * FROM trips,driver WHERE trips.id=driver.id");
       $stmt->execute();
  

  // set the resulting array to associative
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
    echo $v;
} 
}
catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
  echo $sql2 . "<br>" . $e->getMessage();
    }
    echo "</table>";
        // Close connection
        $conn = null;
        ?>
    </center>
  </br>
<br>
<center>
<form action="index.html" method="POST">
  <input type="submit" value="NEW TRIP"/>
</form>
  </center>
</body>

</html>