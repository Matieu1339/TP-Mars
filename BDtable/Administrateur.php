<?php
class Administrateur extends BDtable
{
    public $IdAdministrateur;
    public $MdpAdmin;
    public $UsernameAdmin;

    public function getIdAdministrateur()
    {
        return $this->IdAdministrateur;
    }

    public function getMdpAdmin()
    {
        return $this->MdpAdmin;
    }

    public function getUsernameAdmin()
    {
        return $this->UsernameAdmin;
    }

    public function setIdAdministrateur($idadm)
    {
        $this->IdAdministrateur = $idadm;
    }


    public function setMdpAdmin($logadm)
    {
        $this->mdpAdmin = $logadm;
    }

    public function setUsernameAdmin($logadm)
    {
        $this->UsernameAdmin = $logadm;
    }

}

?>