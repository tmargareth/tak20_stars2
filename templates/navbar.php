<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <!--<a class="navbar-item" href="https://bulma.io">
            <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
        </a>-->
        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a href="" class="navbar-item">
                <i class="fas fa-home fa-2x"></i>
            </a>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <label for="" class="checkbox">
                    <input type="checkbox" name="allow" id="ip_settings" 
                        value="<?php echo isIPAllow(); ?>" <?php if(isIPAllow()) {echo 'checked'; } ?>>
                    Luba mitu korda hinnata
                </label>
                <a href="books" class="navbar-item">
                    <i class="fas fa-book fa-2x"></i>
                </a>
                <a href="child_mouth" class="navbar-item">
                    <i class="fas fa-child fa-2x"></i>
                </a>
            </div>
        </div>
    </div>
</nav>
<script>
    $(document).ready(function() {
        // https://bulma.io/documentation/components/navbar/
        // Check for click events on the navbar burger icon
        $(".navbar-burger").click(function() {
            // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
            $(".navbar-burger").toggleClass("is-active");
            $(".navbar-menu").toggleClass("is-active");

        });

        $("#ip_settings").change(function() {
            let allow = "<?php echo isIPAllow(); ?>"; // Tekstina
            //console.log(allow); // Kontrolliks konsooli
            if(allow) {                
                allow = 0; // Numbrina
            } else {
                allow = 1; // Numbrina
            }
            $.ajax({
                type: 'POST',
                url: 'setIPValue.php', // setIPValue.php?allow=1&id=1
                data: {
                    allow: allow,
                    id: 1
                },
                success: function(data) {
                    //console.log(data); // echo $result
                    console.log('Settings updated');
                    location.reload(true);
                },
                error: function(data) {
                    //console.log(data); // echo $result
                    console.log('Settings error');
                }
            });
        });

    });
</script>