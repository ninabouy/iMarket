

<style>
 .row{
  margin:50px 0 20px 0;
  }
 span{
  display: block;
  position: relative;
  font-size: 17px;
  margin: 3px ;
  }
  .article{
    cursor:pointer;
  }
 .btn{
  float:right;
  margin-right:1rem;
  margin-bottom:1rem;
  }
 .card-info{
   margin-left:25px
  }
</style>
        <?php
         include("includes/connect.php");
         include("includes/header.php");
         include("includes/navbar.php");
         
        $cat=$_GET['categorie'];

        $c = $db->query("SELECT * FROM Article where idCat=".$cat."");
        $c->execute();
         echo '<div class="container "> 
                    <div class=" row" >';
        while ($article = $c->fetch()){
            ?>

                
                  <div class="article col ">
                     <div class="card" style="width:15rem; margin: 20px 0px 20px 0px;" >
                        <h5 class="card-info" style="margin-top:15px; color:#0e3368"> <?= $article['nomArtc'].' '.' '.$article['refArtc'] ?> </h5>
                       <img src="<?= '../img/'.$article['photoArtc'] ?>" >
                       <div >
                         
                         <span class="card-info" style="color:#575757">  <?= $article['descriptionArtc'] ?>  </span>
                         <div style="display:flex; justify-content:space-between;">
                            <span class="price" style="margin-left:25px; color:#0e3368;"><strong><?= $article['prixArtc'].' DA' ?> </strong> </span>

                           <a href="#" class="btn btn-primary"><i class="fal fa-cart-plus "></i></a>
                        </div>
                       </div>
                     </div>
                  </div>
                
              
           
          
       
        <?php } echo '</div> 
                        </div>';
        include('includes/footer.php')
      ?>
      <script src="https://code.jquery.com/jquery-3.5.1.js"integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="crossorigin="anonymous"></script>
   <script >
  $(document).ready(function (){
    $('#rayons-btn').on('click',function(){
       $('#navbar').toggle(500)
    });
 });

   
   </script>