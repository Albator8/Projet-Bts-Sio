<?php



class Connexion{
    private static $serveur = 'localhost';

    private static $bdd= 'bdd_lavage_auto';

    private static $user = 'root';

    private static $mdp = '';

    private $com;

    public function __construct(){
        //$dsn ='mysql:host='.self:: $serveur.';user='.self:: $bdd.';user='.self:: $user.';password = '.self::$mdp;
    
        try {
            //$monPDO =new PDO ($dsn);
            //
            $dsn = new PDO('mysql:host=localhost;dbname=bdd_lavage_auto', self::$user, self::$mdp);
            $dsn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
            //$monPDO->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
            $this->com = $dsn;

        }
        catch(PDOException $e){
                $msg = 'ERREUR PDO DANS'.
                $e->getFile().'L.'.$e->getLine().':'.$e->getMessage();
                die($msg);
        }

    }

    public function LesProduits ()
{
    $req = "SELECT * FROM produit";
    $res=  $this->com->query($req);
    $lesLignes = $res->fetchAll();
    return $lesLignes;

}
    public function Les_prestation(){
        $req = "SELECT * FROM prestation";
        $Leslignes = $res->fetchall();
        return $Leslignes;
    }


    

        
            
    
}



 

  

    
