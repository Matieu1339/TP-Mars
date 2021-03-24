<?php
class Categorie extends BDtable{
    public $IdCategorie;
    public $NomCategorie;

    public function getIdCategorie(){
        return $this->IdCategorie;
    }
    public function setIdCategorie($IdCategorie){
        $this->IdCategorie=$IdCategorie;
    }
    public function getNomCategorie(){
        return $this->NomCategorie;
    }
    public function setNomCategorie($NomCategorie){
        $this->NomCategorie=$NomCategorie;
    }
}
?>