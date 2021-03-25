<?php

/**
 * 
 */
class BDtable

{
	
	function __construct()
	{
		
	}

    

	public function MakaConnex()
    {
        return $this->Connex;
    }

    
    public function setConnex($Conn)
    {
        $this->Connex = $Conn;
    }

    public function MakaReflectionClass()
    {
        $nom=get_class($this);
        $ReflectCla = new ReflectionClass($nom);
        return $ReflectCla;
    }

    public function MakaNomTable($ReflectCla)
    {
        $nomTable = $ReflectCla->getName();
        return $nomTable;
    }

    public function MakaAttributs($ReflectCla)
    {
        /**
        * fonction Reflect maka attribut rehetra
        * maka attributs
        **/
        return $ReflectCla->getproperties();
    }

    public function MakaNameAttributs($attributs)
    {
        $nomAtr=array();
        $indice=0;
        foreach ($attributs as $atr) 
        {
            $nomAtr[$indice] = $atr->getName();
            $indice++;
        }
        return $nomAtr;
    }

    public function MakaMethodesName($attributs)
    {
        $methodName= array();
        $indice=0;
        foreach ($attributs as $atr) 
        {
            //var_dump($atr->getName());
            $methodName[$indice] = 'get'.$atr->getName();
            //var_dump($methodName);
            $indice++;
        }
        return $methodName;
    }

    public function MakaSettersName($attributs)
    {
        $methodName= array();
        $indice=0;
        foreach ($attributs as $atr) 
        {
            //var_dump($atr->getName());
            $methodName[$indice] = 'set'.$atr->getName();
            //var_dump($methodName);
            $indice++;
        }
        return $methodName;
    }

    public function MakaMethodes($methodName)
    {
        $ReflectCla=$this->MakaReflectionClass();
        $method=array();
        $indiceMethode=0;
        for($i=0;$i<count($methodName);$i++)
        {
            // var_dump($method);
            $method[$indiceMethode]= $ReflectCla->getMethod($methodName[$i]) ;
            $indiceMethode++;
        }
        return $method;
    }

    public function MakaValeurMethodes($method)
    {
        $valeur=array();
        $indiceAttribut=0;
        $indiceMethode=0;
        for($i=0;$i<count($method);$i++)
        {
            $valeur[$indiceAttribut]= $method[$indiceMethode]->invoke($this);
            $indiceAttribut++;
            $indiceMethode++;
        }
        return $valeur;
    }

    public function Insert($conex)
    {
        $ReflectCla=$this->MakaReflectionClass();
    	$nomTable = $this->MakaNomTable($ReflectCla);
        /**
        * maka attributs
        **/
    	$attributs=$this->MakaAttributs($ReflectCla);
    	$indice=0;
        echo count($attributs);
    	/**
		* nom de chaque methode
    	*/
    	$methodName=$this->MakaMethodesName($attributs);
    	/**
        * les Methodes
        */
        $method=$this->MakaMethodes($methodName);
        $valeur=$this->MakaValeurMethodes($method);
        /**
        *les valeurs dans un string
        */
        $requete="insert into ".$nomTable." values"."(";
        for($i=0;$i<count($valeur);$i++)
        {
            
            
            if(is_double($valeur[$i])==true || is_float($valeur[$i])==true || is_integer($valeur[$i])==true || is_long($valeur[$i])==true)
            {
                if($i!=count($valeur)-1)
                {
                    $requete = $requete."$valeur[$i],";
                    //var_dump($requete);
                }
                else
                {
                    $requete = $requete."$valeur[$i])";
                    //var_dump($requete);
                }
            }
            else
            {
                if($i!=count($valeur)-1)
                {
                    $requete = $requete."'$valeur[$i]',";
                    //var_dump($requete);
                }
                else
                {
                    $requete = $requete."'$valeur[$i]')";
                    //var_dump($requete);
                }
            }
        }
        //echo $requete;
        $conex->exec($requete);
    }

    public function update($conex)
    {
        $ReflectCla=$this->MakaReflectionClass();
        $nomTable = $this->MakaNomTable($ReflectCla);
        $attributs=$this->MakaAttributs($ReflectCla);
        $methodName=$this->MakaMethodesName($attributs);
        /**
        * les Methodes
        */
        $method=$this->MakaMethodes($methodName);
        $valeur=$this->MakaValeurMethodes($method);
        $nomAtr=$this->MakaNameAttributs($attributs);
        $set="";
        for($i=1;$i<count($attributs);$i++)
        {
            if(is_double($valeur[$i])==true || is_float($valeur[$i])==true || is_integer($valeur[$i])==true || is_long($valeur[$i])==true)
            {
                if($i!=count($attributs)-1)
                {

                    $set = $set.$nomAtr[$i]." = ".$valeur[$i].",";
                    //var_dump($valeur[$i]);
                }
                else
                {
                    $set = $set.$nomAtr[$i]." = ".$valeur[$i]." ";
                   // var_dump($valeur[$i]);
                }
            }
            else
            {
                if($i!=count($attributs)-1)
                {

                    $set = $set.$nomAtr[$i]." = "."'$valeur[$i]'".",";
                    //var_dump($valeur[$i]);
                }
                else
                {
                    $set = $set.$nomAtr[$i]." = "."'$valeur[$i]'"." ";
                    //var_dump($valeur[$i]);
                }
            }
            
        }
        $where=" where ".$nomAtr[0]." = ".$valeur[0];
        $requete="UPDATE ".$nomTable." Set ".$set.$where;
        //var_dump($requete);
        $conex->exec($requete);
    }

    public function delete($conex)
    {
        $ReflectCla=$this->MakaReflectionClass();
        $nomTable = $this->MakaNomTable($ReflectCla);
        $attributs=$this->MakaAttributs($ReflectCla);
        $methodName=$this->MakaMethodesName($attributs);
        /**
        * les Methodes
        */
        $method=$this->MakaMethodes($methodName);
        $valeur=$this->MakaValeurMethodes($method);
        $nomAtr=$this->MakaNameAttributs($attributs);
        $set="";
        //var_dump($valeur);
        for($i=0;$i<count($attributs);$i++)
        {
            if(is_double($valeur[$i])==true || is_float($valeur[$i])==true || is_integer($valeur[$i])==true || is_long($valeur[$i])==true)
            {
                if($i!=count($attributs)-1)
                {

                    $set = $set.$nomAtr[$i]." = ".$valeur[$i]." AND ";
                    //var_dump($valeur[$i]);
                }
                else
                {
                    $set = $set.$nomAtr[$i]." = ".$valeur[$i]." ";
                   // var_dump($valeur[$i]);
                }
            }
            else
            {
                if($i!=count($attributs)-1)
                {

                    $set = $set.$nomAtr[$i]." = "."'$valeur[$i]'"." AND ";
                    //var_dump($valeur[$i]);
                }
                else
                {
                    $set = $set.$nomAtr[$i]." = "."'$valeur[$i]'"." ";
                    //var_dump($valeur[$i]);
                }
            }
            
        }
        $requete="DELETE from ".$nomTable." where ".$set;
        //var_dump($requete);
        $conex->exec($requete);
    }

    public function find($conex)
    {
        $ReflectCla=$this->MakaReflectionClass();
        $nomTable = $this->MakaNomTable($ReflectCla);
        $attributs=$this->MakaAttributs($ReflectCla);
        $methodName=$this->MakaMethodesName($attributs);
        /**
         * les Methodes
        */
        $method=$this->MakaMethodes($methodName);
        $valeur=$this->MakaValeurMethodes($method);
        $nomAtr=$this->MakaNameAttributs($attributs);

        /**
           * recherche de tout les attributs non null
        */
        $atrNonNull=array();
        $nomAtrNonNull=array();
        $indiceAttributNonNull=0;
        for($i=0;$i<count($attributs);$i++)
        {
            // echo 'nombre attributs';
            //var_dump(count($attributs));
            //var_dump($valeur[$i]);

            if($valeur[$i]!=null)
            {
                $atrNonNull[$indiceAttributNonNull]=$valeur[$i];
                $nomAtrNonNull[$indiceAttributNonNull]=$nomAtr[$i];
                $indiceAttributNonNull++;
            }
        }
        // echo 'ito le attributs non null';
        //var_dump($atrNonNull);
        /**
        *  initialisation de la requete
        */
        
        $requete="";
        if(count($atrNonNull)==0)
        {
            $requete="select * from ".$nomTable;
        }
        else
        {
            $requete="select * from ".$nomTable." where ";
            $where="";
            for($i=0;$i<count($atrNonNull);$i++)
            {
                if(is_double($atrNonNull[$i])==true || is_float($atrNonNull[$i])==true || is_integer($atrNonNull[$i])==true || is_long($atrNonNull[$i])==true)
                {
                    if($i!=count($atrNonNull)-1)
                    {
                        $where = $where.$nomAtrNonNull[$i]." = ".$atrNonNull[$i]." AND ";
                        //var_dump($where);
                    }
                    else
                    {
                        $where = $where.$nomAtrNonNull[$i]." = ".$atrNonNull[$i]." ";
                        //var_dump($where);
                    }
                }
                else
                {
                    if($i!=count($atrNonNull)-1)
                    {
                        $where = $where.$nomAtrNonNull[$i]." = "."'$atrNonNull[$i]'"." AND ";
                        // var_dump($where);
                    }
                    else
                    {
                        $where = $where.$nomAtrNonNull[$i]." = "."'$atrNonNull[$i]'"." ";
                        // var_dump($where);   
                    }
                }
            }
            $requete = $requete.$where;
        }
        
        $stmt = $conex->query($requete);
        $stmt->setFetchMode(PDO::FETCH_NUM);
        $compteur=0;
        // echo 'statement ';
        // var_dump($stmt);
        while (($ito = $stmt->fetch())) {
            // echo 'ito le ito';
            // var_dump($ito);
            $compteur++;
            // echo 'compteur:';
            // var_dump($compteur);
        }
        /**
        * les setters de la classe
        */
        
        /**
        * creation du retour de class BDtable et celui de l objet apellant
        */
        $reponse = array();
        $indiceRep=0;
        for($i=0;$i<$compteur;$i++)
        {
            $reponse[$i]=clone $this;
        }
        // var_dump($reponse);
        $settersName=$reponse[0]->MakaSettersName($attributs);
        $Methodsetters=$reponse[0]->MakaMethodes($settersName);
        $indiceSetters=0;
        // echo 'ito method setters';
        // var_dump($Methodsetters);
        /**

        */
        $stmt = $conex->query($requete);
        $stmt->setFetchMode(PDO::FETCH_NUM);
        // var_dump($Methodsetters);
        while (($it = $stmt->fetch())) 
        {
            for($i=0;$i<$compteur;$i++)
            {
                // echo 'Methode setters';
                // var_dump($Methodsetters[$indiceSetters]);
                $Methodsetters[$indiceSetters]->invoke($reponse[$indiceRep],$it[$i]);
                // var_dump($Methodsetters[$indiceSetters]);
                $indiceSetters++;
            }
            $indiceSetters=0;
            $indiceRep++;
        }
        // echo 'valeur reponse ';
        // var_dump($reponse); 
        // var_dump($requete);
        return $reponse;
    } 


}

?>