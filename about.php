<?php require_once 'header.php';
$sql=$db->read("abouts");
$row=$sql->fetch(PDO::FETCH_ASSOC);
?>
<section id="gtco-welcome" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="row">
                <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2" style="background-image: url(nedmin/dimg/abouts/<?php echo $row['abouts_file'] ?>);">

                </div>
                <div class="col-sm-7 py-5 pl-md-0 pl-4">
                    <div class="heading-section pl-lg-5 ml-md-5">
                        <span class="subheading">
                            <?php echo $row['abouts_title']; ?>
                        </span>
                        <h2>
                         Hoş Geldiniz
                     </h2>
                 </div>
                 <div class="pl-lg-5 ml-md-5">
                  <p> <?php echo mb_substr($row['abouts_content'], 0,380) ?> </p>
                  <h3 class="mt-5">Özel Tarif</h3>
                  <div class="row">
                  <?php 
                  $spe=$db->read("specialrecipe");
                  while ($special = $spe->fetch(PDO::FETCH_ASSOC)) { ?>
                    <div class="col-4">
                        <a href="#" class="thumb-menu">
                            <img class="img-fluid img-cover" src="nedmin/dimg/specialrecipe/<?php echo $special['specialrecipe_file'] ?>">
                            <h6><?php echo $special['specialrecipe_title']; ?></h6>
                        </a>
                    </div>
                <?php } ?>

                </div>


            </div>

        </div>

    </div>
</div>
</div>
</section>

<?php require_once 'footer.php' ?>