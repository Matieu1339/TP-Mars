<?php
class ImageProduit() extends BDtable
{
    public $IdImage;
    public $IdProduit;
    public $NomImage;

    public function getIdImage()
    {
        return $this->IdImage;
    }
    public function setIdImage($IdImage)
    {
        $this->IdImage=$IdImage;
    }
    public function getIdProduit()
    {
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit)
    {
        $this->IdProduit=$IdProduit;
    }
    public function getNomImage()
    {
        return $this->NomImage;
    }
    public function setNomImage($NomImage)
    {
        $this->NomImage=$NomImage;
    }
}
?>