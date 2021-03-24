CREATE DATABASE Commerce;

USE Commerce;

CREATE TABLE Administrateur(
    IdAdministrateur INTEGER NOT NULL,
    UsernameAdmin VARCHAR(50),
    MdpAdmin VARCHAR(100)
);

CREATE TABLE Client(
    IdCLient INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    LoginClient VARCHAR(50),
    UsernameClient VARCHAR(50),
    MdpClient VARCHAR(100)
);

CREATE TABLE Categorie(
    IdCategorie INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NomCategorie VARCHAR(50)
);

CREATE TABLE SousCategorie(
    IdSousCategorie INTEGER,
    IdCategorie INTEGER,
    NomSousCategorie VARCHAR(50),
    FOREIGN KEY(IdCategorie) REFERENCES Categorie(IdCategorie)
);

CREATE TABLE Produit(
    IdProduit INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IdCategorie INTEGER,
    IdSousCategorie INTEGER,
    NomProduit VARCHAR(50),
    PrixUnitaire INTEGER,
    DateIntro DATE,
    DescriProduit TEXT,
    ImageProduit VARCHAR(10),
    FOREIGN KEY(IdCategorie) REFERENCES Categorie(IdCategorie),
    FOREIGN KEY(IdSousCategorie) REFERENCES SousCategorie(IdSousCategorie)
);

CREATE TABLE Solde(
    IdSolde INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IdProduit INTEGER,
    Pourcentage DOUBLE,
    EstValable VARCHAR(3),
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit)
);

CREATE TABLE Stock(
    idProduit INTEGER,
    Quantite INTEGER,
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit)
);

CREATE TABLE Vente(
    IdVente INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    IdClient INTEGER,
    IdProduit INTEGER,
    Quantite INTEGER,
    DateVente DATE,
    FOREIGN KEY(IdClient) REFERENCES Client(IdClient),
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit)
);

/*    IdAdministrateur UsernameAdmin MdpAdmin   */

INSERT INTO Administrateur VALUES(1,'Mathieu',sha1("1234"));
INSERT INTO Administrateur VALUES(2,'Mandresy',sha1("9876"));
INSERT INTO Administrateur VALUES(3,'Frorencia',sha1("2468"));

/*  IdCLient LoginClient UsernameClient MdpClient  */

INSERT INTO Client VALUES(null,'jean@gmail.com','Jean',sha1("1111"));
INSERT INTO Client VALUES(null,'paul@gmail.com','Paul',sha1("2222"));
INSERT INTO Client VALUES(null,'jack@gmail.com','Jack',sha1("3333"));
INSERT INTO Client VALUES(null,'alice@gmail.com','Alice',sha1("4444"));
INSERT INTO Client VALUES(null,'marie@gmail.com','Marie',sha1("5555"));
INSERT INTO Client VALUES(null,'cedric@gmail.com','Cedric',sha1("6666"));
INSERT INTO Client VALUES(null,'gaby@gmail.com','Gaby',sha1("7777"));
INSERT INTO Client VALUES(null,'mark@gmail.com','Mark',sha1("8888"));

/*  IdCategorie NomCategorie    */

INSERT INTO Categorie VALUES(null,'Shoes');
INSERT INTO Categorie VALUES(null,'Bags');
INSERT INTO Categorie VALUES(null,'Clothing');
INSERT INTO Categorie VALUES(null,'Jewelry');
INSERT INTO Categorie VALUES(null,'Accessories');
INSERT INTO Categorie VALUES(null,'Computer');
INSERT INTO Categorie VALUES(null,'Automobiles');
INSERT INTO Categorie VALUES(null,'Phones');
INSERT INTO Categorie VALUES(null,'Toys');

/*  IdSousCategorie IdCategorie NomSousCategorie  */

INSERT INTO SousCategorie VALUES(null,1,'Sandal');
INSERT INTO SousCategorie VALUES(null,1,'Shoes');
INSERT INTO SousCategorie VALUES(null,2,'Backpack');
INSERT INTO SousCategorie VALUES(null,2,'Daypack');
INSERT INTO SousCategorie VALUES(null,2,'Handbag');
INSERT INTO SousCategorie VALUES(null,3,'Pants');
INSERT INTO SousCategorie VALUES(null,3,'Shirt'); /*    Chemise */
INSERT INTO SousCategorie VALUES(null,3,'Sweater');/*   Pull */
INSERT INTO SousCategorie VALUES(null,3,'T-Shirt');
INSERT INTO SousCategorie VALUES(null,4,'Necklace');
INSERT INTO SousCategorie VALUES(null,4,'Bracelet');
INSERT INTO SousCategorie VALUES(null,4,'Ring');
INSERT INTO SousCategorie VALUES(null,4,'Earring');
INSERT INTO SousCategorie VALUES(null,5,'Selfie stick');
INSERT INTO SousCategorie VALUES(null,5,'Keyboard&Mouse');
INSERT INTO SousCategorie VALUES(null,5,'Charger Pc');
INSERT INTO SousCategorie VALUES(null,5,'Phone&PC battery');
INSERT INTO SousCategorie VALUES(null,5,'Housse');
INSERT INTO SousCategorie VALUES(null,5,'Other');
INSERT INTO SousCategorie VALUES(null,6,'Dell');
INSERT INTO SousCategorie VALUES(null,6,'Asus');
INSERT INTO SousCategorie VALUES(null,6,'HP');
INSERT INTO SousCategorie VALUES(null,6,'Apple');
INSERT INTO SousCategorie VALUES(null,7,'Mercedes');
INSERT INTO SousCategorie VALUES(null,7,'Ford');
INSERT INTO SousCategorie VALUES(null,7,'Nissan');
INSERT INTO SousCategorie VALUES(null,7,'Toyota');
INSERT INTO SousCategorie VALUES(null,8,'Apple');
INSERT INTO SousCategorie VALUES(null,8,'Honor');
INSERT INTO SousCategorie VALUES(null,8,'Huawei');
INSERT INTO SousCategorie VALUES(null,8,'Samsung');
INSERT INTO SousCategorie VALUES(null,9,'Lego');
INSERT INTO SousCategorie VALUES(null,9,'Nerf');
INSERT INTO SousCategorie VALUES(null,9,'Figurine');
INSERT INTO SousCategorie VALUES(null,9,'Plush');
INSERT INTO SousCategorie VALUES(null,9,'Skateboard');


/*  IdProduit IdCategorie IdSousCategorie NomProduit PrixUnitaire DateIntro DescriProduit ImageProduit  */

INSERT INTO Produit VALUES(null,1,1,'Sandal Adidas',90,'2020-12-01','','Sandal Adidas.jpg');
INSERT INTO Produit VALUES(null,1,1,'Sandal Kala',80,'2020-12-01','','Sandal Kala.jpg');
INSERT INTO Produit VALUES(null,1,2,'LACE',85,'2020-12-01','','Shoes LACE.jpg');
INSERT INTO Produit VALUES(null,1,2,'Vans',95,'2020-12-01','','Shoes Vans.jpg');
INSERT INTO Produit VALUES(null,1,2,'Allstar',95,'2020-12-01','','Shoes Allstar.jpg');

INSERT INTO Produit VALUES(null,2,3,'Backpack Coral',210,'2020-03-24','','Backpack Coral.jpg');
INSERT INTO Produit VALUES(null,2,3,'Backpack Crossover',210,'2020-03-24','','Backpack Crossover.jpg');
INSERT INTO Produit VALUES(null,2,3,'Crossover',210,'2020-03-24','','Backpack Crossover.jpg');
INSERT INTO Produit VALUES(null,2,4,'Aevor',210,'2020-03-24','','Daypack Aevor.jpg');
INSERT INTO Produit VALUES(null,2,4,'Urban',210,'2020-03-24','','Daypack Urban.jpg');
INSERT INTO Produit VALUES(null,2,5,'Bagworld',210,'2020-03-24','','Handbag Bagworld.jpg');
INSERT INTO Produit VALUES(null,2,5,'Handbag',210,'2020-03-24','','Handbag.jpg');

INSERT INTO Produit VALUES(null,3,6,'Pants Jean',1000,'2021-05-19','','Pants Jean.jpg');
INSERT INTO Produit VALUES(null,3,6,'Pants white',1000,'2021-05-19','','Pants white.jpg');
INSERT INTO Produit VALUES(null,3,7,'Shirt Travel',1000,'2021-05-19','','Shirt Travel.jpg');
INSERT INTO Produit VALUES(null,3,7,'Shirt Long Sleeve',1000,'2021-05-19','','Shirt Long Sleeve.jpg');
INSERT INTO Produit VALUES(null,3,8,'Sweater USA',1000,'2021-05-19','','Sweater USA.jpg');
INSERT INTO Produit VALUES(null,3,8,'Sweater black',1000,'2021-05-19','','Sweater black.jpg');
INSERT INTO Produit VALUES(null,3,9,'B&W T-Shirt',1000,'2021-05-19','','T-Shirt.jpg');
INSERT INTO Produit VALUES(null,3,9,'T-Shirt IDH',1000,'2021-05-19','','T-Shirt IDH.jpg');

INSERT INTO Produit VALUES(null,4,10,'Starling',300,'2021-01-22','','Necklace Starling.jpg');
INSERT INTO Produit VALUES(null,4,10,'Sparklight',300,'2021-01-22','','Necklace Sparklight.jpg');
INSERT INTO Produit VALUES(null,4,11,'Infinity',300,'2021-01-22','','Bracelet Infinity.jpg');
INSERT INTO Produit VALUES(null,4,11,'BDelux',300,'2021-01-22','','Bracelet Delux.jpg');
INSERT INTO Produit VALUES(null,4,12,'Diamond',300,'2021-01-22','','Ring Diamond.jpg');
INSERT INTO Produit VALUES(null,4,12,'Blush',300,'2021-01-22','','Ring Blush.jpg');
INSERT INTO Produit VALUES(null,4,13,'Diamond',300,'2021-01-22','','Earring Diamond.jpg');
INSERT INTO Produit VALUES(null,4,13,'Catbird',300,'2021-01-22','','Earring Catbird.jpg');

INSERT INTO Produit VALUES(null,5,14,'Selfie Stick Pink',200,'2021-10-27','','Selfie Stick Pink.jpg');
INSERT INTO Produit VALUES(null,5,14,'Selfi stick blue',200,'2021-10-27','','Selfi stick blue.jpg');
INSERT INTO Produit VALUES(null,5,15,'Keyboard + Mouse',200,'2021-10-27','','Accessories Keyboard + Mouse.jpg');
INSERT INTO Produit VALUES(null,5,16,'Charger Computer',200,'2021-10-27','','Accessories Chargeur Computer.jpg');
INSERT INTO Produit VALUES(null,5,17,'Housse',200,'2021-10-27','','Accessories Housse.jpg');
INSERT INTO Produit VALUES(null,5,18,'Ecouteur',200,'2021-10-27','','Accessories phone.jpg');
INSERT INTO Produit VALUES(null,5,18,'Ventilateur',200,'2021-10-27','','Accessories Ventilateur.jpg');

INSERT INTO Produit VALUES(null,6,19,'Dell Inspiron',50,'2021-03-12','','Computer Dell Inspiron.jpg');
INSERT INTO Produit VALUES(null,6,20,'Asus',50,'2021-03-12','','Computer Asus.jpg');
INSERT INTO Produit VALUES(null,6,21,'Lenovo UltraBook',50,'2021-03-12','','Computer Lenovo UltraBook.jpg');
INSERT INTO Produit VALUES(null,6,22,'MacBook Pro',50,'2021-03-12','','Computer MacBook Pro.jpg');

INSERT INTO Produit VALUES(null,7,23,'Mercedes Saga',10000,'2021-01-24','','Automobiles Mercedes Saga.jpg');
INSERT INTO Produit VALUES(null,7,24,'Ford Focus RS',10000,'2021-01-24','','Automobiles Ford Focus RS.jpg');
INSERT INTO Produit VALUES(null,7,25,'Navara Nissan',10000,'2021-01-24','','Automobiles Navara Nissan.jpg');
INSERT INTO Produit VALUES(null,7,26,'Renaul France',10000,'2021-01-24','','Automobiles Renaul France.jpg');
INSERT INTO Produit VALUES(null,7,27,'BMW CapCar',10000,'2021-01-24','','Automobiles BMW CapCar.jpg');

INSERT INTO Produit VALUES(null,8,28,'Apple',600,'2021-03-21','','Iphone Apple.jpg');
INSERT INTO Produit VALUES(null,8,29,'Honor',600,'2021-03-21','','Phone Honor.jpg');
INSERT INTO Produit VALUES(null,8,30,'Huawei',600,'2021-03-21','','Phone Huawei.jpg');
INSERT INTO Produit VALUES(null,8,31,'Samsung',600,'2021-03-21','','Phone Samsung.jpg');

INSERT INTO Produit VALUES(null,9,32,'Lego Creator',600,'2021-03-21','','Toys Lego Creator.jpg');
INSERT INTO Produit VALUES(null,9,33,'Nerf',600,'2021-03-21','','Toys Nerf.jpg');
INSERT INTO Produit VALUES(null,9,34,'Batman',600,'2021-03-21','','Toys Figurine.jpg');
INSERT INTO Produit VALUES(null,9,35,'Peluche',600,'2021-03-21','','Toys Teddy.jpg');
INSERT INTO Produit VALUES(null,9,36,'Skateboard',600,'2021-03-21','','Toys Skateboard.jpg');

/*  IdSolde IdProduit  Pourcentage EstValable  */

INSERT INTO Solde VALUES(null,1,10,'Oui');
INSERT INTO Solde VALUES(null,2,10,'Non');
INSERT INTO Solde VALUES(null,3,20,'Non');
INSERT INTO Solde VALUES(null,4,10,'Oui');
INSERT INTO Solde VALUES(null,5,10,'Non');
INSERT INTO Solde VALUES(null,6,5,'Non');
INSERT INTO Solde VALUES(null,7,5,'Oui');
INSERT INTO Solde VALUES(null,8,10,'Non');
INSERT INTO Solde VALUES(null,9,20,'Non');
INSERT INTO Solde VALUES(null,10,10,'Non');
INSERT INTO Solde VALUES(null,11,10,'Oui');
INSERT INTO Solde VALUES(null,12,5,'Non');
INSERT INTO Solde VALUES(null,13,10,'Non');
INSERT INTO Solde VALUES(null,14,20,'Oui');
INSERT INTO Solde VALUES(null,15,20,'Non');
INSERT INTO Solde VALUES(null,16,10,'Oui');
INSERT INTO Solde VALUES(null,17,10,'Non');
INSERT INTO Solde VALUES(null,18,5,'Non');
INSERT INTO Solde VALUES(null,19,5,'Non');
INSERT INTO Solde VALUES(null,20,5,'Oui');
INSERT INTO Solde VALUES(null,21,10,'Non');
INSERT INTO Solde VALUES(null,22,20,'Non');
INSERT INTO Solde VALUES(null,23,20,'Non');
INSERT INTO Solde VALUES(null,24,20,'Oui');
INSERT INTO Solde VALUES(null,25,10,'Non');
INSERT INTO Solde VALUES(null,26,10,'Non');
INSERT INTO Solde VALUES(null,27,20,'Oui');
INSERT INTO Solde VALUES(null,28,20,'Non');
INSERT INTO Solde VALUES(null,29,10,'Non');
INSERT INTO Solde VALUES(null,30,10,'Non');
INSERT INTO Solde VALUES(null,31,20,'Oui');
INSERT INTO Solde VALUES(null,32,20,'Non');
INSERT INTO Solde VALUES(null,33,10,'Non');
INSERT INTO Solde VALUES(null,34,5,'Non');
INSERT INTO Solde VALUES(null,35,10,'Non');
INSERT INTO Solde VALUES(null,36,20,'Oui');
INSERT INTO Solde VALUES(null,37,5,'Non');
INSERT INTO Solde VALUES(null,38,10,'Oui');
INSERT INTO Solde VALUES(null,39,50,'Non');
INSERT INTO Solde VALUES(null,40,20,'Oui');
INSERT INTO Solde VALUES(null,41,10,'Non');
INSERT INTO Solde VALUES(null,42,5,'Oui');
INSERT INTO Solde VALUES(null,43,5,'Non');
INSERT INTO Solde VALUES(null,44,20,'Oui');
INSERT INTO Solde VALUES(null,45,10,'Oui');
INSERT INTO Solde VALUES(null,46,10,'Non');
INSERT INTO Solde VALUES(null,47,10,'Oui');
INSERT INTO Solde VALUES(null,48,5,'Oui');
INSERT INTO Solde VALUES(null,49,12,'Oui');
INSERT INTO Solde VALUES(null,50,10,'Non');
INSERT INTO Solde VALUES(null,51,15,'Oui');
INSERT INTO Solde VALUES(null,52,20,'Non');

/*  idProduit Quantite    */
    
INSERT INTO Stock VALUES(1,5);
INSERT INTO Stock VALUES(2,10);
INSERT INTO Stock VALUES(3,3);
INSERT INTO Stock VALUES(4,2);
INSERT INTO Stock VALUES(5,5);
INSERT INTO Stock VALUES(6,1);
INSERT INTO Stock VALUES(7,6);
INSERT INTO Stock VALUES(8,2);
INSERT INTO Stock VALUES(9,3);
INSERT INTO Stock VALUES(10,7);
INSERT INTO Stock VALUES(11,10);
INSERT INTO Stock VALUES(12,15);
INSERT INTO Stock VALUES(13,12);
INSERT INTO Stock VALUES(14,8);
INSERT INTO Stock VALUES(15,9);
INSERT INTO Stock VALUES(16,12);
INSERT INTO Stock VALUES(17,10);
INSERT INTO Stock VALUES(18,12);
INSERT INTO Stock VALUES(19,11);
INSERT INTO Stock VALUES(20,13);
INSERT INTO Stock VALUES(21,10);
INSERT INTO Stock VALUES(22,9);
INSERT INTO Stock VALUES(23,8);
INSERT INTO Stock VALUES(24,7);
INSERT INTO Stock VALUES(25,8);
INSERT INTO Stock VALUES(26,4);
INSERT INTO Stock VALUES(27,5);
INSERT INTO Stock VALUES(28,8);
INSERT INTO Stock VALUES(29,10);
INSERT INTO Stock VALUES(30,15);
INSERT INTO Stock VALUES(31,16);
INSERT INTO Stock VALUES(32,12);
INSERT INTO Stock VALUES(33,10);
INSERT INTO Stock VALUES(34,16);
INSERT INTO Stock VALUES(35,10);
INSERT INTO Stock VALUES(36,3);
INSERT INTO Stock VALUES(37,11);
INSERT INTO Stock VALUES(38,13);
INSERT INTO Stock VALUES(39,10);
INSERT INTO Stock VALUES(40,9);
INSERT INTO Stock VALUES(41,8);
INSERT INTO Stock VALUES(42,7);
INSERT INTO Stock VALUES(43,8);
INSERT INTO Stock VALUES(44,4);
INSERT INTO Stock VALUES(45,5);
INSERT INTO Stock VALUES(46,8);
INSERT INTO Stock VALUES(47,10);
INSERT INTO Stock VALUES(48,15);
INSERT INTO Stock VALUES(49,16);
INSERT INTO Stock VALUES(50,12);
INSERT INTO Stock VALUES(51,10);
INSERT INTO Stock VALUES(52,16);