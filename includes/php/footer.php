<footer class='row'>
    <div class='col-1'>
    <?php 
        if (($pageID > 0) && ($pageID != 41)){
            echo "<button class='btn btn-light' onclick='deleteAllCookies()'>
                    <i class='fa-solid fa-ban'></i>
                  </button>";
        }
    ?>
    </div>
    <div class='col d-flex justify-content-end'>
        <?php
        if(($pageID === 0)||($pageID > 40)){
            $Y = date('Y');
            echo "©$Y";
        } else {
            $a = 'in arbiet';
            $Y = date('Y');
            echo "©$a$Y";
        }
        ?>
    </div>
    <div class='col d-flex justify-content-end'>
    <?php 
        if ($pageID === 0){
            echo "<button type='submit' class='btn btn-light'>
                    <i class='fa-solid fa-circle-play'></i>
                  </button>";
        } elseif (($pageID > 0) &&($pageID <= 40)){
            echo "<button type='submit' class='btn btn-light'>
                    <i class='fa-solid fa-circle-chevron-right'></i>
                  </button>";
        }
    ?>
    </div>
</footer>