<?php
require "config/config.php";
require "config/common.php";

$allow = $_POST["allow"]; //navbaris vasakpoolne allow
$id = $_POST["id"];

try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");
    $sql = "UPDATE settings SET allow = :allow WHERE id = :id"; //PDO-ga nii, ei tohi mysqli-d kasutada pdo-ga
    $data = array(
        ":allow" => $allow,
        ":id" => $id
    );
    $statement = $connection->prepare($sql);
    $statement->execute($data);

    $result = "OK";
} catch (PDOException $error) {
    echo $error->getMessage();
    $result = "ERROR";

}
?>