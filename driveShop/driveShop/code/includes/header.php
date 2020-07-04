



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../style.css">
  <link href="https://fonts.googleapis.com/css?family=Baloo+Bhaina+2:700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="../fontawesome/css/all.css">
    <title> T-Easy Drive </title>
</head>

   <?php
include('connect.php');
include('./search.php');
?>
<header class="header" id="begin" style="background-color:lightgray; height:100px;">
    
    <div id="rayons-btn"  >
        <i class="fal fa-bars"  ></i>
        <span class="ryn-btn" id="mySnav"> Rayons</span>
    </div>
    
    <div class="logo" ><img src="../img/logoProjetFinal.png" alt="" style="height:150px;width:200px"></div>

    <div class="search"> 
        <form method="GET">
            <div class="search-text"><input class="input" type="text" name="searchproduct" placeholder="Chercher un article...">
            <div class="search-btn"> <input type="submit" value="valider"></div>
         </div>
         </form>
    </div>
  
  
    <div class="header-cp-pn">
      <a href="#" id="compte"> 
        <div style="padding-left:15px"> <i class="fal fa-arrow-alt-to-right"></i> </div> 
        <div style="font-size:15px"> Compte </div>
     </a>
      <a href="#" id="panier"> 
        <div style="padding-left:10px"><i class="far fa-shopping-cart"></i></div> 
        <div> Panier </div>  
     </a>
    </div>

    
   </header>
