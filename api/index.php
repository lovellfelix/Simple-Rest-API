<?php

require '../lib/Slim/Slim.php';

$app = new Slim();

$app->get('/employees', 'getEmployees');
$app->run();

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


function getConnection() {
	$dbhost="localhost";
	$dbuser="root";
	$dbpass="root";
	$dbname="api";
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbh;
}

?>