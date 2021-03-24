<?php
class Client Extends BDtable{
    public $IdCLient;
    public $LoginClient;
    public $UsernameClient;
    public $MdpClient;

    public function getIdCLient()
    {
        return $this->IdCLient;
    }
    public function setIdCLient($IdCLient)
    {
        $this->IdCLient=$IdCLient;
    }
    public function getLoginClient()
    {
        return $this->LoginClient;
    }
    public function setLoginClient($LoginClient)
    {
        $this->LoginClient=$LoginClient;
    }
    public function getUsernameClient()
    {
        return $this->UsernameClient;
    }
    public function setUsernameClient($UsernameClient)
    {
        $this->UsernameClient=$UsernameClient;
    }
    public function getMdpClient()
    {
        return $this->MdpClient;
    }
    public function setMdpClient($MdpClient)
    {
        $this->MdpClient=$MdpClient;
    }
}
?>