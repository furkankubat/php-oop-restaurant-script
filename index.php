<?php require_once 'header.php' ?>

<div class="hero">
  <div class="container">
    <div class="row d-flex align-items-center">
        <div class="col-lg-6 hero-left">
            <h1 class="display-4 mb-5">Severiz <br>Lezzetli Yiyecekler!</h1>
            <div class="mb-2">
                <a class="btn btn-primary btn-shadow btn-lg" href="menu.php" role="button">Menü Keşfet</a>
                <a class="btn btn-icon btn-lg" href="https://player.vimeo.com/video/33110953" data-featherlight="iframe" data-featherlight-iframe-allowfullscreen="true">
                    <span class="lnr lnr-film-play"></span>
                    Video Oynat
                </a>
            </div>

            <ul class="hero-info list-unstyled d-flex text-center mb-0">
                <li class="border-right">
                    <span class="lnr lnr-rocket"></span>
                    <h5>
                        Hızlı Teslimat
                    </h5>
                </li>
                <li class="border-right">
                    <span class="lnr lnr-leaf"></span>
                    <h5>
                        Taze Gıda
                    </h5>
                </li>
                <li class="">
                    <span class="lnr lnr-bubble"></span>
                    <h5>
                        24/7 Destek
                    </h5>
                </li>
            </ul>

        </div>
        <div class="col-lg-6 hero-right">
            <div class="owl-carousel owl-theme hero-carousel">

                <?php 
                $sql = $db->read("sliders");
                while ($slider=$sql->fetch(PDO::FETCH_ASSOC)) { ?>
                    <div class="item">
                        <img class="img-fluid" src="nedmin/dimg/sliders/<?php echo $slider['sliders_file'] ?>" alt="<?php echo $slider['sliders_title'] ?>">
                    </div>
                <?php } ?>            
            </div>
        </div>
    </div>
</div>
</div>
<!-- Welcome Section -->
<section id="gtco-welcome" class="bg-grey section-padding">
    <div class="container">
        <div class="section-content">
            <?php 
            $sql=$db->read("abouts");
            $row=$sql->fetch(PDO::FETCH_ASSOC);
            ?>
            <div class="row">
                <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2" style="background-image: url(nedmin/dimg/abouts/<?php echo $row['abouts_file']; ?>);">

                </div>


                <div class="col-sm-7 py-5 pl-md-0 pl-4">
                    <div class="heading-section pl-lg-5 ml-md-5">
                        <span class="subheading">
                            <?php echo $row['abouts_title']; ?>
                        </span>
                        <h2>
                            Hoşgeldiniz
                        </h2>
                    </div>
                    <div class="pl-lg-5 ml-md-5">
                        <p><?php echo mb_substr($row['abouts_content'], 0,380) ?></p>

                        <h3 class="mt-5">Özel Tarifler</h3>
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
<!-- End of Welcome Section -->		<!-- Special Dishes Section -->

<!-- End of Special Dishes Section -->		<!-- Menu Section -->
<section id="gtco-menu" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="row mb-5">
                <div class="col-md-12">
                    <div class="heading-section text-center">
                        <span class="subheading">
                            Uzmanlık
                        </span>
                        <h2>
                            Menümüz
                        </h2>
                    </div>  
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 menu-wrap">
                    <div class="heading-menu">
                        <h3 class="text-center mb-5">Kahvaltı</h3>
                    </div>
                    
                    <?php 

                    $sql=$db->read("breakfast");
                    while ($breakfast=$sql->fetch(PDO::FETCH_ASSOC)) { ?>

                     <div class="menus d-flex align-items-center">
                        <div class="menu-img rounded-circle">
                            <img class="img-fluid" src="nedmin/dimg/breakfast/<?php echo $breakfast['breakfast_file'] ?>" alt="">
                        </div>
                        <div class="text-wrap">
                            <div class="row align-items-start">
                                <div class="col-8">
                                    <h4><?php echo $breakfast['breakfast_title']; ?></h4>
                                </div>
                                <div class="col-4">
                                    <h4 class="text-muted menu-price"><?php echo $breakfast['breakfast_price']; ?></h4>
                                </div>
                            </div>
                            <p><?php echo mb_substr($breakfast['breakfast_content'], 0,50); ?></p>
                        </div>
                    </div>

                <?php } ?>

            </div>


            <div class="col-lg-4 menu-wrap">
                <div class="heading-menu">
                    <h3 class="text-center mb-5">Yemekler</h3>
                </div>

                <?php 

                $sql=$db->read("food");
                while ($food=$sql->fetch(PDO::FETCH_ASSOC)) { ?>

                 <div class="menus d-flex align-items-center">
                    <div class="menu-img rounded-circle">
                        <img class="img-fluid" src="nedmin/dimg/food/<?php echo $food['food_file'] ?>" alt="">
                    </div>
                    <div class="text-wrap">
                        <div class="row align-items-start">
                            <div class="col-8">
                                <h4><?php echo $food['food_title']; ?></h4>
                            </div>
                            <div class="col-4">
                                <h4 class="text-muted menu-price"><?php echo $food['food_price']; ?></h4>
                            </div>
                        </div>
                        <p><?php echo mb_substr($food['food_content'], 0,50); ?></p>
                    </div>
                </div>

            <?php } ?>
            
        </div>

        <div class="col-lg-4 menu-wrap">
            <div class="heading-menu">
                <h3 class="text-center mb-5">İçecekler</h3>
            </div>

            <?php 

            $sql=$db->read("beverage");
            while ($beverage=$sql->fetch(PDO::FETCH_ASSOC)) { ?>

               <div class="menus d-flex align-items-center">
                <div class="menu-img rounded-circle">
                    <img class="img-fluid" src="nedmin/dimg/beverage/<?php echo $beverage['beverage_file'] ?>" alt="">
                </div>
                <div class="text-wrap">
                    <div class="row align-items-start">
                        <div class="col-8">
                            <h4><?php echo $beverage['beverage_title']; ?></h4>
                        </div>
                        <div class="col-4">
                            <h4 class="text-muted menu-price"><?php echo $beverage['beverage_price']; ?></h4>
                        </div>
                    </div>
                    <p><?php echo mb_substr($beverage['beverage_content'], 0,50); ?></p>
                </div>
            </div>

        <?php } ?>




    </div>
</div>
</section>
<!-- End of menu Section -->		<!-- Testimonial Section-->
<section id="gtco-testimonial" class="overlay bg-fixed bg-grey section-padding" style="background-image: url(img/testi-bg.jpg);">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">

                <h2>
                 Mutlu Müşteri
                </h2>

         </div>
         <div class="row">
            <!-- Testimonial -->
            <div class="testi-content testi-carousel owl-carousel">
                <?php 
                $sql=$db->read("team");
                while ($team=$sql->fetch(PDO::FETCH_ASSOC)) { ?>

                    <div class="testi-item">
                        <i class="testi-icon fa fa-3x fa-quote-left"></i>
                        <p class="testi-text"><?php echo mb_substr($team['team_about'], 0,198) ?></p>
                        <p class="testi-author" style="color: blue;"><?php echo $team['team_namesurname'] ?></p>
                        <p class="testi-desc" style="color: red;"><?php echo $team['team_expert']; ?></p>
                    </div>

                <?php } ?>
            </div>
            <!-- End of Testimonial -->
        </div>
    </div>
</div>
</section>
<!-- End of Testimonial Section-->		<!-- Team Section -->
<section id="gtco-team" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">
                <span class="subheading">
                    Uzmanlık
                </span>
                <h2>
                    Bizim Takım
                </h2>
            </div>
            <div class="row">
             <?php 
             $sql=$db->read("team");
             while ($team=$sql->fetch(PDO::FETCH_ASSOC)) { ?>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" width="500" height="250" src="nedmin/dimg/team/<?php echo $team['team_file'] ?>" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0"><?php echo $team['team_namesurname']; ?></h4>
                            <p class="mb-1"><?php echo $team['team_expert'] ?></p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="<?php echo $team['team_facebook'] ?>">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="<?php echo $team['team_twitter'] ?>">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="<?php echo $team['team_instagram'] ?>">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="<?php echo $team['team_mail'] ?>">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
            <?php } ?>

        </div>
    </div>
</div>
</section>
<!-- End of Team Section -->        <!-- Reservation Section -->
<section id="gtco-reservation" class="bg-fixed bg-white section-padding overlay" style="background-image: url(img/reservation-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="section-content bg-white p-5 shadow">
                    <div class="heading-section text-center">
                        <span class="subheading">
                            Rezervasyon
                        </span>
                        <h2>
                           Hemen Yer Ayır
                       </h2>
                   </div>


                   <form method="post" name="contact-us" action="mail/gonder.php">
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" id="name" name="isim" placeholder="İsim" required>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Eposta" required>
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="number" class="form-control" id="phoneNumber" name="tel" placeholder="Telefon" required>
                        </div>

                        <div class="col-md-6 form-group">
                            <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" name="tarih" data-target="#datetimepicker4" placeholder="Tarih" required />
                                <div class="input-group-append" data-target="#datetimepicker4" data-toggle="datetimepicker">
                                    <div class="input-group-text">
                                        <span class="lnr lnr-calendar-full"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 form-group">
                            <div class="input-group date" id="datetimepicker3" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" name="saat" data-target="#datetimepicker3" placeholder="Saat" required />
                                <div class="input-group-append" data-target="#datetimepicker3" data-toggle="datetimepicker">
                                    <div class="input-group-text">
                                        <span class="lnr lnr-clock"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        

                        <div class="col-md-12 form-group">
                            <textarea class="form-control" id="message" name="mesaj" rows="6" maxlength="500" placeholder="Kişi Sayısı ..." required></textarea>
                        </div>
                        <div class="col-md-12 text-center">
                            <button class="btn btn-primary btn-shadow btn-lg" type="submit" name="submit">Gönder</button>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>

</div>
</section>

<?php require_once 'footer.php' ?>