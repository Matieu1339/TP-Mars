<?php
class Administrateur extends BDtable{
    public $IdAdministrateur;
    public $UsernameAdmin;
    public $MdpAdmin;

    public function getIdAdministrateur()
    {
        return $this->IdAdministrateur;
    }
    public function setIdAdministrateur($IdAdministrateur)
    {
        $this->IdAdministrateur = $IdAdministrateur;
    }
    public function getMdpAdmin()
    {
        return $this->MdpAdmin;
    }
    public function setMdpAdmin($MdpAdmin)
    {
        $this->mdpAdmin = $MdpAdmin;
    }
    public function getUsernameAdmin()
    {
        return $this->UsernameAdmin;
    }
    public function setUsernameAdmin($UsernameAdmin)
    {
        $this->UsernameAdmin = $UsernameAdmin;
    }
}

?>