<?php
class SousCategorie extends BDtable{
    public $IdSousCategorie;
    public $IdCategorie;
    public $NomSousCategorie;

    public function getIdSousCategorie(){
        return $this->IdSousCategorie;
    }
    public function setIdSousCategorie($IdSousCategorie){
        $this->IdSousCategorie=$IdSousCategorie;
    }
    public function getIdCategorie(){
        return $this->IdCategorie;
    }
    public function setIdCategorie($IdCategorie){
        $this->IdCategorie=$IdCategorie;
    }
    public function getNomSousCategorie(){
        return $this->NomSousCategorie;
    }
    public function setNomSousCategorie($NomSousCategorie){
        $this->NomSousCategorie=$NomSousCategorie;
    }
}
?>