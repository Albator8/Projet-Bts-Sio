<?php
session_start();
include("vues/v_entete.php") ;
include("vues/v_bandeau.php") ;
require_once("util/class.PDO.HTAuto.inc.php");

if(!isset($_REQUEST['uc']))
     $uc = 'accueil';
else
	$uc = $_REQUEST['uc'];

/*//Instanciation d'un objet utile pour l'utilisation de la base de données */
$pdo = PdoHtAuto::getPdoHtAuto();
switch($uc)
{
     case 'voirProduits' :
          include("controleurs/c_voirProduits.php");
          break;
     case 'administrer' :
          include("controleurs/c_administer.php");
          break;
	case 'accueil':
		include("vues/v_accueil.php");
          break;      
}
include("vues/v_pied.php") ;


?>
