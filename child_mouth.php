<?php
# Tuvastame kasutaja IP aadressi
$ip = "POLE";
if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
    $ip = $_SERVER["HTTP_CLIENT_IP"];
} elseif (!empty($_SERVER["HTTP_X_FORWARDED_FOR"])) {
    $ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
} else {
    $ip = $_SERVER["REMOTE_ADDR"];
}
# Võtame need raamatu ID-d mida on see arvuti hinnanud.
try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");

    $sql = 'SELECT mouth_id FROM rates_mouth WHERE ip = :ip GROUP BY mouth_id';

    $statment = $connection->prepare($sql);
    $statment->bindValue(":ip", $ip);
    $statment->execute();
    $ips = $statment->fetchAll(PDO::FETCH_ASSOC);
    //show($ips); // Testiks
} catch (PDOException $error) {
    echo $error->getMessage();
}

try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");

    $sql = 'SELECT
                tb.id, tb.child_text,
                COALESCE(AVG(rb.stars), 0) AS rating 
    
    FROM childs_mouth AS tb
    LEFT JOIN rates_mouth AS rb ON tb.id = rb.mouth_id
    GROUP BY tb.id ORDER BY RAND()';
    $statment = $connection->prepare($sql);
    $statment->execute();
    $results = $statment->fetchAll(PDO::FETCH_ASSOC);
    //show(count($results)); // Testiks
} catch (PDOException $error) {
    echo $error->getMessage();
}
?>
<div class="columns m-1">
    <div class="column">
        <h1 class="is-size-2 has-text-centered mb-2">Lapsesuu ei valeta</h1>

        <?php
        if ($results) { # Kas DB saadi midagi
        ?>
            <table class="table is-fullwidth is-hoverable is-bordered">
                <thead class="has-text-centered">
                    <tr>
                        <th>Tekst</th>
                        <th style="width: 150px;">Hinnang</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($results as $key => $val) {
                    ?>
                        <tr>
                            <td class=""><?php echo $val['child_text']; ?></td>
                            <td class="has-text-centered">
                                <div class="my-rating" id="<?php echo $val["id"]; ?>"></div>
                                
                                <?php
                                $found = false; //Raamatu id-d pole veel leitud
                                foreach($ips as $k => $v) {
                                    if($val["id"] == $v["mouth_id"]) {
                                        $found = true;
                                    }
                                }
                                ?>

<script>
                                settings_result = <?php echo json_encode(isIPAllow()); ?>;
                                found = <?php echo json_encode($found); ?>;
                                if(settings_result) {
                                    found= false;
                                }

                                $(".my-rating").starRating({
                                    starSize: 25,
                                    disableAfterRate: !settings_result,
                                    readOnly: found,
                                    initialRating: <?php echo $val["rating"]; ?>,
                                    callback: function(currentRating, $el) {
                                        let rate = currentRating; // mitu * valiti
                                        let ip = "<?php echo $ip; ?>"; // ip
                                        let id = $el[0].id; // my-rating id=
                                        console.log(rate, ip, id); // test
                                        $.ajax({
                                            type: "POST",
                                            url: "setMouthValue.php",
                                            data: {
                                                rate: rate,
                                                ip: ip,
                                                id: id
                                            },
                                            success: function(data) {
                                                console.log("Rating updated");
                                                location.reload(true); // laeb lehe uuesti
                                            },
                                            error: function(data) {
                                                console.log("Rating error");
                                            }
                                        });
                                    }
                                });
                            </script>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        <?php
        } else { # EI saadud DB midagi
        ?>
            <h4 class="is-size-4 has-text-centered has-text-danger">Ei leitud midagi</h4>
        <?php
        }
        ?>
    </div>
</div>