<?php 
# Nice URL and all over index.php
$ProjectFolder = "/tak20_stars2/"; # ÄRA UNUSTA .htaccess FAILI!
# Eemaldame kausta osa URL reast
$request = str_replace($ProjectFolder, "/", $_SERVER['REQUEST_URI']);
# Eemaldame $request eest / ehk /default_seo/ => default_seo/
$request = substr($request, 1, strlen($request));
# Teeme selle slashist (/) osadeks
$req = explode('/', $request);

define('PROJECT_FULL_URL', 'https://'.$_SERVER['SERVER_NAME'].$ProjectFolder);


function show($array) {
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}
// andmebaasis olev info muutujasse
try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");
    $sql = "SELECT * FROM settings ORDER BY id LIMIT 1";
    $statement =$connection->prepare($sql);
    $statement->execute();
    $row = $statement->fetch();
    define("IP_ALLOW", $row["allow"]); // konstants läbivate suurte tähtedega
} catch (PDOException $error) {
    echo $error->getMessage();
}

function isIPAllow() {
    if(IP_ALLOW) {
        return true;
    } else {
        return false;
    }
}
?>