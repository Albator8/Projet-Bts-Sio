<?php
/** 
 * Classe d'accès aux données. 
 
 * Utilise les services de la classe PDO
 * pour l'application HtAuto (adaptation du cas lafleur)
 * Les attributs sont tous statiques,
 * les 4 premiers pour la connexion
 * $monPdo de type PDO 
 * $monPdoGsb qui contiendra l'unique instance de la classe
 *
 * @package default
 * @author Patrice Grand & Gilda SPENO
 * @version    1.0
 * @link       http://www.php.net/manual/fr/book.pdo.php
 */

class PdoHtAuto
{   		
      	private static $serveur='mysql:host=localhost';
      	private static $bdd='dbname=HTAuto';   		
      	private static $user='root' ;    		
      	private static $mdp='' ;	
		private static $monPdo;
		private static $monPdoHtAuto = null;
/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */				
	private function __construct()
	{
    		PdoHtAuto::$monPdo = new PDO(PdoHtAuto::$serveur.';'.PdoHtAuto::$bdd, PdoHtAuto::$user, PdoHtAuto::$mdp); 
			PdoHtAuto::$monPdo->query("SET CHARACTER SET utf8");
	}
	public function _destruct(){
		PdoHtAuto::$monPdo = null;
	}
/**
 * Fonction statique qui crée l'unique instance de la classe
 *
 * Appel : $instancePdoHtAuto = PdoHtAuto::getPdoHtAuto();
 * @return l'unique objet de la classe PdoHtAuto
 */
	public  static function getPdoHtAuto()
	{
		if(PdoHtAuto::$monPdoHtAuto == null)
		{
			PdoHtAuto::$monPdoHtAuto=new PdoHtAuto();
		}
		return PdoHtAuto::$monPdoHtAuto;  
	}
/**
 * Retourne toutes les catégories sous forme d'un tableau associatif
 *
 * @return le tableau associatif des catégories 
*/
        

    public function getLesVoitures()
    {
		$req = "SELECT * FROM voiture";
		$res=  PdoHtAuto::$monPdo->query($req);
		$lesLignes = $res->fetchAll();
		return $lesLignes;
     }
        
    function getFieldsName ($tableName) {
		$recordset = PdoHtAuto::$monPdo->query("SHOW COLUMNS FROM $tableName");
		$fields = $recordset->fetchAll(PDO::FETCH_ASSOC);
		foreach ($fields as $field) {
			$fieldNames[] = $field['Field'];
		}
		return $fieldNames;
    }

	public function getLesVoituresDeMarque($marque)
	{
	    //A compléter
	}
        
    public function getLesVoituresDeType($type)
	{
	    //A compléter
	}
/**
 * Retourne les produits concernés par le tableau des idProduits passée en argument
 *
 * @param $desIdProduit tableau d'idProduits
 * @return un tableau associatif 
*/
	public function getLesProduitsDuTableau($desIdProduit)
	{
		$nbProduits = count($desIdProduit);
		$lesProduits=array();
		if($nbProduits != 0)
		{
			foreach($desIdProduit as $unIdProduit)
			{
				$req = "select * from produit where id = '$unIdProduit'";
				$res=  PdoHtAuto::$monPdo->query($req);
				$unProduit = $res->fetch();
				$lesProduits[] = $unProduit;
			}
		}
		return $lesProduits;
	}
        
    public function rechercherLaVoiture ($numimma)
	{
	    //A compléter
	}
        
    public function supprVoiture($listeV)
    {
        foreach ($listeV as $cle => $val)
        {
            //A compléter
        }
            //return $res;
        }
        
        public function recupChamps()
        {
            $req = "SHOW COLUMNS FROM voiture";
            $res=  PdoHtAuto::$monPdo->query($req);
            return $res;
        }
        
        public function nouvelleVoiture($numImma, $marque, $type, $annee, $puissance, $couleur)
        {
			//A compléter
		}
        
        
        
        public function modifVoiture($numimma, $marque, $type, $annee, $puissance, $couleur)
        {
			//A compléter
		}

}
?>
