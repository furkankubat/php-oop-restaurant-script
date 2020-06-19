
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

      if (isset($_GET['beverageInsert'])) { ?> 

       <header class="panel-heading panel-primary"> <h3>İçecek Ekle</h3> </header>
       <?php 
       if (isset($_POST['beverage_insert'])) 
       {
        $sonuc=$db->insert("beverage",$_POST, // beverage tablosunu çekiyoruz ve gelen bütün POST değerlerini çekiyoruz. post ettiğimizde bütün değerlerle birlikte beverage_insert değeri de geldiği için post verilerinden beverage_insertü ayıklıyoruz.($options)
          [
            "form_name" => "beverage_insert",
            "dir" => "beverage",
            "file_name" => "beverage_file"
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
             <input class="form-control" type="file" name="beverage_file" required="">
           </div>
         </div>
       </div>

       <div class="form-gruop">
         <label>İçecek Title</label>
         <div class="row">
           <div class="col-xs-12">
             <input class="form-control" type="text" name="beverage_title" required="">
           </div>
         </div>
       </div>

       <div class="form-gruop">
         <label>İçecek Fiyat</label>
         <div class="row">
           <div class="col-xs-12">
             <input class="form-control" type="text" name="beverage_price" required="">
           </div>
         </div>
       </div>

       <div class="form-gruop">
         <label>İçecek İçerik</label>
         <div class="row">
           <div class="col-xs-12">
             <textarea class="form-control" name="beverage_content" id="editor1"></textarea>
           </div>
         </div>
       </div>

       <script>
        CKEDITOR.replace( 'editor1' );
      </script>


      <div align="right" class="panel-footer">
       <button type="submit" class="btn btn-success" name="beverage_insert">Ekle</button>
     </div>



   </form>


 </section>

</div>
</div>

<?php } else if (isset($_GET['beverageUpdate'])) { 

 //Bağşı id bilgilerini çek

  ?>

  <div class="row">
    <div class="col-lg-12">
     <section class="panel">



       <header class="panel-heading panel-primary"> <h3>İçecek Düzenle</h3> </header>

       <?php 
       if (isset($_POST['beverage_update'])) 
       {
        $sonuc=$db->update("beverage",$_POST, 
          [
            "form_name" => "beverage_update",
            "columns" => "beverage_id",
            "dir" => "beverage",
            "file_name" => "beverage_file",
            "file_delete" => "delete_file"
          ]);

          if (isset($sonuc['status'])) {?>
            <div class="alert alert-success">Kayıt Başarılı...</div>
          <?php } else { ?>
            <div class="alert alert-danger">Kayıt Başarısız...</div>
          <?php }

        }

        $sql=$db->wread("beverage","beverage_id",$_GET['beverage_id']);
        $row=$sql->fetch(PDO::FETCH_ASSOC);
        ?>

        <form method="POST" enctype="multipart/form-data">

         <div class="form-gruop">
          <label>Yüklü Resim</label>
          <div class="row">
           <div class="col-xs-12">
            <img width="100" height="100" src="dimg/beverage/<?php echo $row['beverage_file'] ?>">
          </div>
        </div>
      </div>

      <div class="form-gruop">
        <label>Resim Seç</label>
        <div class="row">
         <div class="col-xs-12">
           <input class="form-control" type="file" name="beverage_file">
         </div>
       </div>
     </div>

     <div class="form-gruop">
       <label>İçecek Title</label>
       <div class="row">
         <div class="col-xs-12">
           <input class="form-control" type="text" value="<?php echo $row['beverage_title'] ?>" name="beverage_title" required="">
         </div>
       </div>
     </div>

     <div class="form-gruop">
       <label>İçecek Fiyat</label>
       <div class="row">
         <div class="col-xs-12">
           <input class="form-control" type="text" value="<?php echo $row['beverage_price'] ?>" name="beverage_price" required="">
         </div>
       </div>
     </div>

     <div class="form-gruop">
       <label>İçecek İçerik</label>
       <div class="row">
         <div class="col-xs-12">
          <textarea class="form-control" name="beverage_content" id="editor1"><?php echo $row['beverage_content']; ?></textarea>
         </div>
       </div>
     </div>

     <script>
      CKEDITOR.replace( 'editor1' );
    </script>

  </div>



  <input type="hidden" name="beverage_id" value="<?php echo $row['beverage_id']; ?>">
  <input type="hidden" name="delete_file" value="<?php echo $row['beverage_file']; ?>">

  <div align="right" class="panel-footer">
   <button type="submit" class="btn btn-success" name="beverage_update">Düzenle</button>
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
     <h3>İçecek Listele</h3>
     <div class="mt-2" align="right">
      <a href="?beverageInsert=true"><button class="btn btn-success">Yeni Ekle</button></a>
    </div>
  </header>

  <table class="table table-striped table-bordered">

    <thead>
      <tr>
        <th align="center" width="10">#</th>
        <th>İçecek Title</th>
        <th>İçecek İçerik</th>
        <th></th>
        <th ></th>
      </tr>
    </thead>

    <?php 
    $say=1;
    $sql=$db->read("beverage");
    while ($row=$sql->fetch(PDO::FETCH_ASSOC)) { ?>
      <tbody id="sortable">
         <tr id="item-<?php echo $row['beverage_id']; ?>">
          <td><?php echo $say++; ?></td>
          <td class="sortable"><?php echo $row['beverage_title']; ?></td>
          <td width="1000"><?php echo $row['beverage_content']; ?></td>
          <td width="10" align="center"><div class="btn-group update"><a class="btn btn-success" href="?beverageUpdate=true&beverage_id=<?php echo $row['beverage_id'] ?>"><i class="icon_pencil"></i></a></div></td>  
          <td width="10" align="center"><div class="btn-group delete"><a  class="btn btn-danger" href="?beverageDelete=true&beverage_id=<?php echo $row['beverage_id'] ?>&file_delete=<?php echo $row['beverage_file'] ?>"><i class="icon_trash"></i></a></div></td>

        </tr>
      </tbody>

    <?php } 
    if (isset($_GET['beverageDelete'])) {
      $sonuc=$db->delete("beverage","beverage_id",$_GET['beverage_id'],$_GET['file_delete']);

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
          url:"netting/order-ajax.php?beverage_must=true",
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
