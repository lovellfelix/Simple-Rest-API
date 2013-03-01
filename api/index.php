<?php
//Slim framework include stored in lib folder
require '../lib/Slim/Slim.php';

//Initiate new Slim instance
$app = new Slim();

$app->get('/employees', 'getEmployees'); // list all employees > http://localhost/../employees
$app->get('/employee/:id',	'getEmployee'); // display single employee data based on employee ID > http://localhost/../employee/ID
$app->get('/employees/search/:query', 'findByFirstName'); // search employees > http://localhost/../employees/search/?
$app->run();

//fetch data from employees table in database
function getEmployees() {
	$sql = "select * FROM employees ORDER BY employee_id";
	try {
		$db = getConnection();
		$stmt = $db->query($sql);  
		$employees = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo '{"employees": ' . json_encode($employees) . '}';
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
}
//fetch data from employee based on id
function getEmployee($id) {
	$sql = "SELECT * FROM employees WHERE employee_id=:id";
	try {
		$db = getConnection();
		$stmt = $db->prepare($sql);  
		$stmt->bindParam("id", $id);
		$stmt->execute();
		$wine = $stmt->fetchObject();  
		$db = null;
		echo json_encode($wine); 
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
}

//Search for employees 
function findByFirstName($query) {
	$sql = "SELECT * FROM employees WHERE UPPER(first_name) LIKE :query ORDER BY employee_id";
	try {
		$db = getConnection();
		$stmt = $db->prepare($sql);
		$query = "%".$query."%";  
		$stmt->bindParam("query", $query);
		$stmt->execute();
		$employees = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo '{"employees": ' . json_encode($employees) . '}';
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
}

//Database connection strings dbhost is typically localhost on most servers if connection fails use 127.0.0.1
function getConnection() {
	$dbhost="localhost";
	$dbuser="root";  //Database user
	$dbpass="";  //Database password
	$dbname="api";   //Databse name
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	//Initiates the connections PDO style
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  //Displays error 
	return $dbh;
}

?>