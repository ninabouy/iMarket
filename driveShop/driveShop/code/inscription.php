<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="../js/script.js"></script>


<div class="register-wrapper">



    <form action="inscription.php" class="register" id="register"  method="POST">
        
      <fieldset>
         <div>
           <label for="nom"> Nom </label>
           <input type="text" name="nom" id="nom" placeholder="Votre nom" size="50" required> 
         </div><br>
         <div>
           <label for="prenom"> Prénom </label>
           <input type="text" name="prenom" id="prenom"  placeholder="Votre prénom"  size="50" required> 
         </div><br>
        
         <div>
           <label for="sexe"> Sexe </label> <br>

           <input type="radio" name="sexe" id="homme" <?php if(isset($sexe) && $sexe =='homme' ) echo ('checked') ; ?>value="homme "  >
           <label for="homme">Homme</label> 
           <input type="radio" name="sexe" id="femme" <?php if(isset($sexe) && $sexe == 'femme') echo ('checked') ; ?> value="femme" >
            <label for="femme">Femme</label> 
         </div> <br>
         <div>
           <label for="email"> Email </label>
           <input type="text" name="email" id="email"  placeholder="ex. courses@example.com"  size="50" required> 
         </div><br>

         <div>
           <label for="adresse"> Adresse </label>
           <input type="text" name="adresse" id="adresse" placeholder="ex. domicile 04 rue Lamali Ahmed"  size="50">
         </div><br>

         <div>
           <label for="ville"> Ville </label>
           <input type="text" name="ville" id="ville" placeholder="ex. Tizi-Ouzou"  size="50">
         </div><br>
         <div>
           <label  for="code-postal"> Code Postal </label>
           <input type="text" name="code_postal" id="code-postal"  placeholder="ex. 15000" max-length="50" size="50" >
         </div><br>
        
         <div>
           <label for="psw"> Mot de passe </label>
           <input type="password" name="psw" id="psw" placeholder="Entrez votre mot de passe" maxlength="16" size="50" required>
         </div><br>
         <div>
           <label for="repsw">Mot de passe</label>
           <input type="password" name="repsw" id="repsw" placeholder="Confirmer votre mot de passe" maxlength="16" size="50" required><br>
         </div>
         <p>Date: <input type="text" id="datepicker"></p>
         <button type="submit" name="inscrire" id="inscrire">S'inscrire</button>

         <p>Déjà membre ?</p> <span><a href="connexion.php">Connectez-vous </a> </span>

         

         

       </fieldset>  
    </form>
</div>


<?php include('connect.php');
      global $db;
 
   if(isset($_POST['inscrire'])){
      extract($_POST);

  try{
  $sql = "INSERT INTO Profil (adrProfil,villeProfil,codepostalProfil,sexeProfil) VALUES (?,?,?,?)";
  $stmt = $db->prepare($sql);

  $result = $stmt->execute([$adresse,$ville,$code_postal,$sexe]);
  $last = $db->lastInsertId();
     } catch(Exception $e){
        echo " Erreur ! ".$e->getMessage();
     }

   
  try{
    $options = [
      'cost' => 12,
    ];
    $hashpass= password_hash($psw, PASSWORD_BCRYPT, $options);
  
   $sql = "INSERT INTO utilisateurs(idProfil,nomUser,prenomUser,emailUser,mdpUser) VALUES (?,?,?,?,?)";
   $stmt = $db->prepare($sql); 
   $result = $stmt->execute([$last,$nom,$prenom,$email,$hashpass]);

     } catch(Exception $e) {
        echo' Erreur! ' . $e->getMessage();
     }

 
 
  }
?>