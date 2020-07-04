<?php

try
	{
	    $db = new PDO('mysql:host=localhost;dbname=bd_supermarche;charset=utf8', 'root', '');
	}
	catch(Exception $e)
	{
	    die('Erreur : '.$e->getMessage());
	}
