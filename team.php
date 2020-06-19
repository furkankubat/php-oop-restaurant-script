<?php require_once 'header.php' ?>
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
<?php require_once 'footer.php' ?>