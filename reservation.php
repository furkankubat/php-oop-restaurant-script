<?php require_once 'header.php' ?>
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