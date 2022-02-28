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

    $sql = 'SELECT book_id FROM rates_books WHERE ip = :ip GROUP BY book_id';

    $statment = $connection->prepare($sql);
    $statment->bindValue(":ip", $ip);
    $statment->execute();
    $ips = $statment->fetchAll(PDO::FETCH_ASSOC);
    //show($ips); // Testiks
} catch (PDOException $error) {
    echo $error->getMessage();
}

# DB ühendus kirjete kokku lugemiseks
try {
    $connection = new PDO($dsn, USERNAME, PASSWORD, $options);
    $connection->exec("SET NAMES utf8");

    $sql = 'SELECT
                tb.id, tb.book_name, tb.book_author,
                COALESCE(AVG(rb.stars), 0) AS rating 
    
    FROM top_books AS tb
    LEFT JOIN rates_books AS rb ON tb.id = rb.book_id
    GROUP BY tb.id';

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
        <h1 class="is-size-2 has-text-centered mb-2">TOP 100 Rahva Raamatut 2021 aastal<sup title="Link lehe lõpus">*</sup></h1>
        <table class="table is-fullwidth is-hoverable is-bordered">
            <thead class="has-text-centered">
                <tr>
                    <th>No</th>
                    <th>Book name</th>
                    <th>Book author</th>
                    <th>Raiting</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $settings_result = isIPAllow(); # Nii nagu seadetes
                foreach ($results as $key => $val) {
                ?>
                    <tr>
                        <td class="has-text-right"><?php echo ($key + 1); ?>.</td>
                        <td><?php echo $val['book_name']; ?></td>
                        <td><?php echo $val['book_author']; ?></td>
                        <td class="has-text-centered">
                            <div class="my-rating" id="<?php echo $val["id"]; ?>"></div>
                            <?php
                            $found = false; //Raamatu id-d pole veel leitud
                            foreach($ips as $k => $v) {
                                if($val["id"] == $v["book_id"]) {
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
                                            url: "setBookValue.php",
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
        * - <a href="https://raamatud.postimees.ee/7419531/selgusid-rahva-raamatu-2021-aasta-populaarseimad-raamatud" target="_blank">https://raamatud.postimees.ee/7419531/selgusid-rahva-raamatu-2021-aasta-populaarseimad-raamatud</a> 
    </div>
</div>