<?php include 'BDtable.php'; ?>
<?php include 'Administrateur.php'; ?>
<?php include 'Connex.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
</head>
<body>
<?php
/**
attributs de $admin
*/  
$admin=new Administrateur();
$admin->setIdAdministrateur(2);
$admin->setUsernameAdmin('Machiavel');
$mdpass=sha1('1234');
$admin->setMdpAdmin($mdpass);
/**
connexion 
*/
$con=new Connex();
$dsn='mysql:dbname=Commerce;host=localhost;charset=utf8';
$utilisateur='root';
$mdp='root';
$connexion=$con->getConnexion($dsn,$utilisateur,$mdp);
/**
BDtable 
*/
$admin->update($connexion);

?>

</body>
</html>