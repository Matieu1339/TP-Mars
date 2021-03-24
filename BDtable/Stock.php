<?php
class Stock extends BDtable{
    public $idProduit;
    public $Quantite;

    public function getidProduit(){
        return $this->idProduit;
    }
    public function setidProduit($idProduit){
        $this->idProduit=$idProduit;
    }
    public function getQuantite(){
        return $this->Quantite;
    }
    public function setQuantite($Quantite){
        $this->Quantite=$Quantite;
    }
}
?>