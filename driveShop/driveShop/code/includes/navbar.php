<?php 
include ('includes/connect.php');
?>

<div id="navbar" class="nav-wrapper" >
  <nav class="nav-menu">
    <h3>  Nos Rayons</h3>
      <span>Choisissez!</span>
   <ul class="menu-area">
     <li>
       <a href="#"> Fruits & Légumes</a>
         <ul>   
            <?php 
              

                
                  $stmt = $db->query("SELECT * FROM categorie where idRay=1");
                  $stmt->execute();
                  foreach($stmt as $row){
                    echo "
                      <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
                    ";                  
                  }
               

    
           ?>
         </ul>
       
     </li>
     <li>
       <a href="#">  Viandes</a>
         <ul>
         <?php 
              

              $stmt = $db->query("SELECT * FROM categorie where idRay=2");
              $stmt->execute();
              foreach($stmt as $row){
                echo "
                  <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
                ";                  
              }
           

    
           ?>
         </ul>
      
     </li>
     <li>
       <a href="#"> Boulangerie </a>
         <ul>
         <?php 

                
$stmt = $db->query("SELECT * FROM categorie where idRay=3");
$stmt->execute();
foreach($stmt as $row){
  echo "
    <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
  ";                  
}



    
           ?>
         </ul>
       
     </li>
     <li>
       <a href="#">Crémerie</a>
         <ul>
         <?php 
             

             $stmt = $db->query("SELECT * FROM categorie where idRay=4");
             $stmt->execute();
             foreach($stmt as $row){
               echo "
                 <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
               ";                  
             }
          

           ?>
         </ul>
       
     </li>
     <li>
       <a href="#"> Entretien & Nettoyage</a>
         <ul>
         <?php 
            

                
            $stmt = $db->query("SELECT * FROM categorie where idRay=5");
            $stmt->execute();
            foreach($stmt as $row){
              echo "
                <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
              ";                  
            }
         

                

    
           ?>
         </ul>
       
     </li>
     <li>
       <a href="#">Electroménager</a>
         <ul>
         <?php 
              

              $stmt = $db->query("SELECT * FROM categorie where idRay=6");
              $stmt->execute();
              foreach($stmt as $row){
                echo "
                  <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
                ";                  
              }
                 
                 

    
           ?>
         </ul>
       
     </li>
     <li>
     <?php 

                
$stmt = $db->query("SELECT * FROM categorie where idRay=7");
$stmt->execute();
foreach($stmt as $row){
  echo "
    <li><a href='catalogue.php?categorie=".$row['idCat']."'>".$row['nomCat']."</a></li>
  ";                  
}

    
           ?>

     </li>
   </ul>
  
  
  
  
  
  </nav>
</div>