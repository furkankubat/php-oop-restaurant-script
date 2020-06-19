
<?php 
require_once 'header.php';
require_once 'sidebar.php';
?>

<!--main content start-->
<section id="main-content">
  <section class="wrapper">

   <div class="row">
    <div class="col-lg-12">
     <section class="panel">

      <?php 

      if (isset($_GET['teamInsert'])) { ?> 

       <header class="panel-heading panel-primary"> <h3>Usta Sayfa Ekle</h3> </header>
       <?php 
       if (isset($_POST['team_insert'])) 
       {
        $sonuc=$db->insert("team",$_POST, // team tablosunu çekiyoruz ve gelen bütün POST değerlerini çekiyoruz. post ettiğimizde bütün değerlerle birlikte team_insert değeri de geldiği için post verilerinden team_insertü ayıklıyoruz.($options)
          [
            "form_name" => "team_insert",
            "slug" => "team_slug",
            "title" => "team_title",
            "file_name" => "team_file",
            "dir" => team
          ]);

          if ($sonuc['status']) {?>
            <div class="alert alert-success">Kayıt Başarılı...</div>
          <?php } else { ?>
            <div class="alert alert-danger">Kayıt başarısız...</div>
          <?php }

        }

        ?>      


        <form method="POST" enctype="multipart/form-data">

          <div class="form-gruop">
            <label>Resim Seç</label>
            <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="file" name="team_file">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta İsim</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_namesurname" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta Slug</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_slug" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta Uzmanlık</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_expert" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta Facebook</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_facebook" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta Twitter</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_twitter" required="">
             </div>
           </div>
         </div>


         <div class="form-gruop">
           <label>Usta Instagram</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="text" name="team_instagram" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta E-posta</label>
           <div class="row">
             <div class="col-xs-12">
               <input class="form-control" type="mail" name="team_mail" required="">
             </div>
           </div>
         </div>

         <div class="form-gruop">
           <label>Usta Hakkında</label>
           <div class="row">
             <div class="col-xs-12">
               <textarea class="form-control" name="team_about" id="editor1"></textarea>
             </div>
           </div>
         </div>

         <script>
          CKEDITOR.replace( 'editor1' );
        </script>

        <div align="right" class="panel-footer">
         <button type="submit" class="btn btn-success" name="team_insert">Ekle</button>
       </div>



     </form>


   </section>

 </div>
</div>

<?php } else if (isset($_GET['teamUpdate'])) { 

 //Bağşı id bilgilerini çek

  ?>

  <div class="row">
    <div class="col-lg-12">
     <section class="panel">



       <header class="panel-heading panel-primary"> <h3>Usta Sayfa Düzenle</h3> </header>

       <?php 
       if (isset($_POST['team_update'])) 
       {
        $sonuc=$db->update("team",$_POST, 
          [
            "form_name" => "team_update",
            "slug" => "team_slug",
            "title" => "team_title",
            "columns" => "team_id",
            "dir" => "team",
            "file_name" => "team_file",
            "file_delete" => "delete_file"
          ]);

          if (isset($sonuc['status'])) {?>
            <div class="alert alert-success">Kayıt Başarılı...</div>
          <?php } else { ?>
            <div class="alert alert-danger">Kayıt Başarısız...</div>
          <?php }

        }

        $sql=$db->wread("team","team_id",$_GET['team_id']);
        $row=$sql->fetch(PDO::FETCH_ASSOC);
        ?>

        <form method="POST" enctype="multipart/form-data">

         <div class="form-gruop">
          <label>Yüklü Resim</label>
          <div class="row">
           <div class="col-xs-12">
            <img width="100" height="100" src="dimg/team/<?php echo $row['team_file'] ?>">
          </div>
        </div>
      </div>

      <div class="form-gruop">
        <label>Resim Seç</label>
        <div class="row">
         <div class="col-xs-12">
           <input class="form-control" type="file" name="team_file">
         </div>
       </div>
     </div>

     <div class="form-gruop">
      <label>Usta  İsim</label>
      <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_namesurname'] ?>" name="team_namesurname" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta Slug</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_slug'] ?>" name="team_slug" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta Uzmanlık</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_expert'] ?>" name="team_expert" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta Facebook</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_facebook'] ?>" name="team_facebook" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta Twitter</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_twitter'] ?>" name="team_twitter" required="">
       </div>
     </div>
   </div>


   <div class="form-gruop">
     <label>Usta Instagram</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="text" value="<?php echo $row['team_instagram'] ?>" name="team_instagram" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta E-posta</label>
     <div class="row">
       <div class="col-xs-12">
         <input class="form-control" type="mail" value="<?php echo $row['team_mail'] ?>" name="team_mail" required="">
       </div>
     </div>
   </div>

   <div class="form-gruop">
     <label>Usta Hakkında</label>
     <div class="row">
       <div class="col-xs-12">
         <textarea class="form-control" name="team_about" id="editor1"><?php echo $row['team_about'] ?></textarea>
       </div>
     </div>
   </div>

   <script>
    CKEDITOR.replace( 'editor1' );
  </script>

</div>



<input type="hidden" name="team_id" value="<?php echo $row['team_id']; ?>">

<div align="right" class="panel-footer">
 <button type="submit" class="btn btn-success" name="team_update">Düzenle</button>
</div>



</form>


</section>

</div>
</div>


<?php } ?>

<div class="row">
  <div class="col-lg-12">
   <section class="panel">
    <header class="panel-heading panel-primary">
     <h3>Usta Sayfa Listele</h3>
     <div class="mt-2" align="right">
      <a href="?teamInsert=true"><button class="btn btn-success">Yeni Ekle</button></a>
    </div>
  </header>

  <table class="table table-striped table-bordered">

    <thead>
      <tr>
        <th align="center" width="10">#</th>
        <th>Usta Resim</th>
        <th>Usta İsim</th>
        <th>Usta Uzmanlık</th>
        <th></th>
        <th ></th>
      </tr>
    </thead>

    <?php 
    $say=1;
    $sql=$db->read("team");
    while ($row=$sql->fetch(PDO::FETCH_ASSOC)) { ?>
      <tbody id="sortable">
       <tr id="item-<?php echo $row['team_id']; ?>">
        <td><?php echo $say++; ?></td>
        <td class="sortable"><img width="100" height="80" src="dimg/team/<?php echo $row['team_file'] ?>" alt="<?php echo $row['team_namesurname'] ?>"></td>
        <td><?php echo $row['team_namesurname']; ?></td>
        <td><?php echo $row['team_expert']; ?></td>
        <td width="10" align="center"><div class="btn-group update"><a class="btn btn-success" href="?teamUpdate=true&team_id=<?php echo $row['team_id'] ?>"><i class="icon_pencil"></i></a></div></td>  
        <td width="10" align="center"><div class="btn-group delete"><a  class="btn btn-danger" href="?teamDelete=true&team_id=<?php echo $row['team_id'] ?>&file_delete=<?php echo $row['team_file'] ?>"><i class="icon_trash"></i></a></div></td>

      </tr>
    </tbody>

  <?php } 
  if (isset($_GET['teamDelete'])) {
    $sonuc=$db->delete("team","team_id",$_GET['team_id'],$_GET['file_delete']);

    if (isset($sonuc['status'])) {?>
      <div class="alert alert-success">Silme İşlemi Başarılı...</div>
    <?php } else { ?>
      <div class="alert alert-danger">Silme İşlemi Başarısız...</div>
    <?php }
  }

  ?>

</table>
</section>


</div>
</div>

</section>
</section>
<!--main content end-->
<!-- container section end -->
<!-- javascripts -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--custome script for all page-->
<script src="js/scripts.js"></script>


<!-- jquery ui -->
<script src="js/jquery-ui/jquery-ui.js"></script>

<script type="text/javascript">

  $(function() {
    $("#sortable").sortable({
      revert:true,
      handle:".sortable",
      stop:function(event,ui) {
        var data=$(this).sortable('serialize');

        $.ajax({
          type:"POST",
          dataType:"json",
          data:data,
          url:"netting/order-ajax.php?team_must=true",
          success:function(msg) {
            if (msg.islemMsj) {
              alert("Sıralama Başarılı");
            } else {
              alert("Hata Var...");
            }

          }
        });
      }



    });
    $("#sortable").disableSelection();
  });

</script>


</body>

</html>
