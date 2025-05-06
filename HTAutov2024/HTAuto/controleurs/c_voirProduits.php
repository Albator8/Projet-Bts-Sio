<?php

$action = $_REQUEST['action'];
switch($action)
{
	case 'voirlesVoitures':
	{
  		//$lesCategories = $pdo->getLesVoitures();
		include("vues/v_lesVoitures.php");
  		break;
	}
	
}
?>

