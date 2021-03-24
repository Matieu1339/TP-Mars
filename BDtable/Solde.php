<?php
class Solde extends BDtable{
    public $IdSolde;
    public $IdProduit;
    public $Pourcentage;
    public $EstValable;

    public function getIdSolde(){
        return $this->IdSolde;
    }
    public function setIdSolde($IdSolde){
        $this->IdSolde=$IdSolde;
    }
    public function getIdProduit(){
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit){
        $this->IdProduit=$IdProduit;
    }
    public function getPourcentage(){
        return $this->Pourcentage;
    }
    public function setPourcentage($Pourcentage){
        $this->Pourcentage=$Pourcentage;
    }
    public function getEstValable(){
        return $this->EstValable;
    }
    public function setEstValable($EstValable){
        $this->EstValable=$EstValable;
    }
}
?>