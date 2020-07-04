<?php include('includes/connect.php'); 
    session_start();
    global $db;
?>

<div class="login-wrapper">
    <form action="connexion.php" class="login" id="login" method="POST">
        <fieldset>
        <div>
           <label for="email"> Email </label>
           <input type="text" name="lemail" id="lemail"  placeholder="ex. courses@example.com"  size="50" required> 
         </div><br>
         <div>

           <label for="psw"> Mot de passe </label>
           <input type="password" name="lpsw" id="lpsw" placeholder="Entrez votre mot de passe" maxlength="16" size="50" required>
         </div><br>

         <button type="submit" name="connecter" id="connecter">Se connecter</button>


        </fieldset>
    </form>
</div>

 <?php
   /* if(isset($_SESSION["user_nom"])&& isset($_SESSION["user_prenom"])== true){
       header("location: index.php");
      echo "vers le panier";
    } */

    if(isset($_POST['connecter'])){

        $emailUser =strip_tags($_REQUEST["lemail"]);
        $mdpUser =strip_tags($_REQUEST["lpsw"]);

        if(empty($emailUser)){ echo "Email is required"; }
         else {
                if(empty($mdpUser)){ echo "password is required"; }
         else{

            try{ 
                
                $select_stmt= $db-> prepare("SELECT * FROM Utilisateurs WHERE emailUser =? ");
                $select_stmt-> execute(array($_POST['lemail'] ));
                $row = $select_stmt-> fetch(PDO::FETCH_ASSOC);
                    
                if($select_stmt->rowCount()>0){
                    if($emailUser==$row["emailUser"]){
                        if(password_verify($mdpUser,$row["mdpUser"])) {
                            $_SESSION["user_nom"] = $row["nomUser"];
                            $_SESSION["user_prenom"] = $row["prenomUser"];
                        
                            echo 'CONNEXTION REUSSI! NOM: '.$_SESSION["user_nom"].' PRENOM: '.$_SESSION["user_prenom"].'.';
                            //ENVOYER L'UTILISATEUR VERS HEADER('LOCATION:PANIER');
                        } else{ echo "FAUX MOT DE PASSE!"; }
                    } else{ echo "FAUX E-MAIL!"; }
                } else{ echo "FAUX E-MAIL!"; }
            }
                catch(PDOException $e){
                    $e->getMessage();
                }
            }
            }

    } 
    ?>