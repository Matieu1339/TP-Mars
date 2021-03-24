<?php
class Solde() extends BDtable
{
    public $IdSolde;
    public $IdProduit;
    public $IdImage;
    public $Pourcentage;
    public $EstValable;

    public function getIdSolde()
    {
        return $this->IdSolde;
    }
    public function setIdSolde($IdSolde)
    {
        $this->IdSolde=$IdSolde;
    }
    public function getIdProduit()
    {
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit)
    {
        $this->IdProduit=$IdProduit;
    }
    public function getIdImage()
    {
        return $this->IdImage;
    }
    public function setIdImage($IdImage)
    {
        $this->IdImage=$IdImage;
    }
    public function getPourcentage()
    {
        return $this->Pourcentage;
    }
    public function setPourcentage($Pourcentage)
    {
        $this->Pourcentage=$Pourcentage;
    }
    public function getEstValable()
    {
        return $this->EstValable;
    }
    public function setEstValable($EstValable)
    {
        $this->EstValable=$EstValable;
    }
}
?>