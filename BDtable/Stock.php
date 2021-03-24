<?php
class Stock extends BDtable()
{
    public $IdProduit;
    public $IdImage;
    public $Quantite;

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
        $this->IdImage=$IdImage
    }
    public function getQuantite()
    {
        return $this->Quantite;
    }
    public function setQuantite($Quantite)
    {
        $this->Quantite=$Quantite;
    }
}
?>