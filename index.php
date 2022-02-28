<?php
require 'config/config.php'; // Seaded
require 'config/common.php'; // Abivahendid
include 'templates/header.php'; // Päis
include 'templates/navbar.php'; // Menüü

# Sellest IF ja else lause osast sõltub, milline
# leht avada
if (!empty($req[0]) and $req[0] != 'index') {
    # Seega req[0] on failinimi ilma php'ta
    $file = $req[0] . '.php'; # lisame phpo failinimele juurde
    if (file_exists($file) and is_file($file)) { # Kas fail on olemas ja on see üldse fail
        # Fail on, seega laeme
        require_once($file);
    } else {
        # Faili ei leitud, lae enda error või näita infot
        echo '<p>Lehte <strong>'.$file.'</strong> ei leitud.</p>';
    }
} else {
    # See on siis avaleht
    include('avaleht.php');
}

include 'templates/footer.php';
?>