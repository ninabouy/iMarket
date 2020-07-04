
<?php 
 include ('includes/connect.php');


    if (isset($_GET['searchproduct']) && !empty($_GET['searchproduct'])){
        $searchproduct = htmlspecialchars($_GET['searchproduct']);
        $articles = $db->query('SELECT Marque.idMrq, Marque.nomMrq, Article.idMrq, Article.nomArtc FROM Marque LEFT JOIN Article ON Marque.idMrq=Article.idMrq WHERE CONCAT(nomArtc, nomMrq) LIKE "%'.$searchproduct.'%" ORDER BY idArtc DESC ');
        $arts = $articles->rowCount();
		if ($arts > 0) {
            ?>
            <ul>
            <?php while ($a = $articles->fetch()) { ?>
                 <li><?= $a['nomArtc'] ?> </li>

            <?php } ?>
            </ul> 
            <?php } else{?>
            Aucun résultat pour: <?= $searchproduct ?>...
            <?php } } ?>
     
		

   


