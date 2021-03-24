<?php
class Administrateur extends BDtable
{
    public $IdProduit;
    public $NomProduit;
    public $PrixUnitaire;
    public $DateIntro;
    public $DescriProduit;

    public function getIdProduit()
    {
        return $this->IdProduit;
    }
    public function setIdProduit($IdProduit)
    {
        $this->IdProduit=$IdProduit;
    }
    public function getNomProduit()
    {
        return $this->NomProduit;
    }
    public function setNomProduit($NomProduit)
    {
        $this->NomProduit=$NomProduit;
    }
    public function getPrixUnitaire()
    {
        return $this->PrixUnitaire;
    }
    public function setPrixUnitaire($PrixUnitaire)
    {
        $this->PrixUnitaire=$PrixUnitaire;
    }
    public function getDateIntro()
    {
        return this->DateIntro;
    }
    public function setDateIntro($DateIntro)
    {
        $this->DateIntro=$DateIntro;
    }
    public function getDescriProduit()
    {
        return $this->DescriProduit;
    }
    public function setDescriProduit($DescriProduit)
    {
        $this->DescriProduit=$DescriProduit;
    }
}
?>