<?php
class Vente extends BDtable{
    public $IdVente;
    public $IdClient;
    public $IdProduit;
    public $Quantite;
    public $DateVente;

    public function getIdVente(){
        return $this->IdVente;
    }
    public function setIdVente($IdVente){
        $this->IdVente=$IdVente;
    }
    public function getIdClient(){
        return $this->IdClient;
    }
    public function setIdClient($IdClient){
        $this->IdClient=$IdClient;
    }
    public function getIdProduit(){
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit){
        $this->IdProduit=$IdProduit;
    }
    public function getQuantite(){
        return $this->Quantite;
    }
    public function setQuantite($Quantite){
        $this->Quantite=$Quantite;
    }
    public function getDateVente(){
        return $this->DateVente;
    }
    public function setDateVente($DateVente){
        $this->DateVente=$DateVente;
    }
}
?>