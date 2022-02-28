<?php
require "config/config.php";
require "config/common.php";

$book_id = $_POST["id"];
$book_rate = $_POST["rate"];
$ip = $_POST["ip"];

try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");
    $sql = "INSERT INTO rates_books (book_id, ip, stars, added)
            VALUES (:b_id, :ip, :rate, NOW())";

    $data = array(
        ":b_id" => $book_id,
        ":ip" => $ip,
        ":rate" => $book_rate
    );
    $statement = $connection->prepare($sql);
    $statement->execute($data);

    $result = "OK";
} catch (PDOException $error) {
    echo $error->getMessage();
    $result = "ERROR";
}

echo $result;

?>