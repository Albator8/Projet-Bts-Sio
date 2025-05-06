<?php

require_once 'Connexion.php';

$h = new Connexion();

$mesProduits =$h->LesProduits();

foreach ($mesProduits as $unProduit) {
    echo "Nom: " . $unProduit["nom"] . ", Caractéristique: " . $unProduit["caractéristique"] . ", Prix: " . $unProduit["prix"] . "\n";
}

?>