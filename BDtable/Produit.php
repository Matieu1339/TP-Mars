<?php
class Produit extends BDtable{
    public $IdProduit;
    public $IdCategorie;
    public $IdSousCategorie;
    public $NomProduit;
    public $PrixUnitaire;
    public $DateIntro;
    public $DescriProduit;
    public $ImageProduit;

    public function getIdProduit(){
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit){
        $this->IdProduit=$IdProduit;
    }
    public function getIdCategorie(){
        return $this->IdCategorie;
    }
    public function set($IdCategorie){
        $this->IdCategorie=$IdCategorie;
    }
    public function getIdSousCategorie(){
        return $this->IdSousCategorie;
    }
    public function setIdSousCategorie($IdSousCategorie){
        $this->IdSousCategorie=$IdSousCategorie;
    }
    public function getNomProduit(){
        return $this->NomProduit;
    }
    public function setNomProduit($NomProduit){
        $this->NomProduit=$NomProduit;
    }
    public function getPrixUnitaire(){
        return $this->PrixUnitaire;
    }
    public function setPrixUnitaire($PrixUnitaire){
        $this->PrixUnitaire=$PrixUnitaire;
    }
    public function getDateIntro(){
        return $this->DateIntro;
    }
    public function setDateIntro($DateIntro){
        $this->DateIntro=$DateIntro;
    }
    public function getDescriProduit(){
        return $this->DescriProduit;
    }
    public function setDescriProduit($DescriProduit){
        $this->DescriProduit=$DescriProduit;
    }
    public function getImageProduit(){
        return $this->ImageProduit;
    }
    public function setImageProduit($ImageProduit){
        $this->ImageProduit=$ImageProduit;
    }
}
?>