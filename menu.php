<?php require_once 'header.php' ?>
<section id="gtco-menu" class="section-padding">
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
                    $say=1;
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
                    $say=1;
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
                    $say=1;
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

                <!-- <div class="col-lg-4 menu-wrap">
                    <div class="heading-menu">
                        <h3 class="text-center mb-5">Breakfast</h3>
                    </div>
                    <div class="menus d-flex align-items-center">
                        <div class="menu-img rounded-circle">
                            <img class="img-fluid" src="img/breakfast-1.jpg" alt="">
                        </div>
                        <div class="text-wrap">
                            <div class="row align-items-start">
                                <div class="col-8">
                                    <h4>Egg Sandwich</h4>
                                </div>
                                <div class="col-4">
                                    <h4 class="text-muted menu-price">$30</h4>
                                </div>
                            </div>
                            <p>Meat Ball, Mie</p>
                        </div>
                    </div>
                    <div class="menus d-flex align-items-center">
                        <div class="menu-img rounded-circle">
                            <img class="img-fluid" src="img/breakfast-1.jpg" alt="">
                        </div>
                        <div class="text-wrap">
                            <div class="row align-items-start">
                                <div class="col-8">
                                    <h4>Egg Sandwich</h4>
                                </div>
                                <div class="col-4">
                                    <h4 class="text-muted menu-price">$30</h4>
                                </div>
                            </div>
                            <p>Meat Ball, Mie</p>
                        </div>
                    </div>
                    <div class="menus d-flex align-items-center">
                        <div class="menu-img rounded-circle">
                            <img class="img-fluid" src="img/breakfast-1.jpg" alt="">
                        </div>
                        <div class="text-wrap">
                            <div class="row align-items-start">
                                <div class="col-8">
                                    <h4>Egg Sandwich</h4>
                                </div>
                                <div class="col-4">
                                    <h4 class="text-muted menu-price">$30</h4>
                                </div>
                            </div>
                            <p>Meat Ball, Mie</p>
                        </div>
                    </div>
                </div> -->

                
            </div>
        </div>
    </div>
</section>
<?php require_once 'footer.php' ?>