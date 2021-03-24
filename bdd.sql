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
    MdpClient VARCHAR(100),
    UsernameClient VARCHAR(50)
);

CREATE TABLE Produit(
    IdProduit INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NomProduit VARCHAR(50),
    PrixUnitaire INTEGER,
    DateIntro DATE,
    DescriProduit TEXT
);

CREATE TABLE ImageProduit(
    IdImage INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IdProduit INTEGER,
    NomImage VARCHAR(50),
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit)
);

CREATE TABLE Stock(
    IdProduit INTEGER,
    IdImage INTEGER,
    Quantite INTEGER,
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit),
    FOREIGN KEY(IdImage) REFERENCES ImageProduit(IdImage)
);

CREATE TABLE Solde(
    IdSolde INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IdProduit INTEGER,
    IdImage INTEGER,
    Pourcentage DOUBLE,
    EstValable VARCHAR(10),
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit),
    FOREIGN KEY(IdImage) REFERENCES ImageProduit(IdImage)
);

CREATE TABLE Vente(
    IdVente INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    IdClient INTEGER,
    IdProduit INTEGER,
    IdImage INTEGER,
    Quantite INTEGER,
    DateVente DATE,
    FOREIGN KEY(IdProduit) REFERENCES Produit(IdProduit),
    FOREIGN KEY(IdClient) REFERENCES Client(IdClient),
    FOREIGN KEY(IdImage) REFERENCES ImagePoduit(IdImage)
);

/*IdAdministrateur   UsernameAdmin   mdpAdmin   */

INSERT INTO Administrateur VALUES(1,'Mathieu',sha1("1234"));
INSERT INTO Administrateur VALUES(2,'Mandresy',sha1("9876"));
INSERT INTO Administrateur VALUES(3,'Frorencia',sha1("2468"));

/*IdCLient   LoginClient   mdpClient   UsernameClient*/

INSERT INTO Client VALUES(null,'jean@gmail.com',sha1("1111"),'Jean');
INSERT INTO Client VALUES(null,'paul@gmail.com',sha1("2222"),'Paul');
INSERT INTO Client VALUES(null,'jack@gmail.com',sha1("3333"),'Jack');
INSERT INTO Client VALUES(null,'alice@gmail.com',sha1("4444"),'Alice');
INSERT INTO Client VALUES(null,'marie@gmail.com',sha1("5555"),'Marie');
INSERT INTO Client VALUES(null,'cedric@gmail.com',sha1("6666"),'Cedric');
INSERT INTO Client VALUES(null,'gaby@gmail.com',sha1("7777"),'Gaby');
INSERT INTO Client VALUES(null,'mark@gmail.com',sha1("8888"),'Mark');

/*IdProduit   NomProduit   PrixUnitaire   DateIntro   DescriProduit*/

INSERT INTO Produit VALUES(null,'Shoes',96,'2020-12-01','');
INSERT INTO Produit VALUES(null,'Bags',210,'2020-03-24','');
INSERT INTO Produit VALUES(null,'Men’s/Women’s Clothing',1000,'2021-05-19','');
INSERT INTO Produit VALUES(null,'Jewelry & Watches',300,'2021-01-22','');
INSERT INTO Produit VALUES(null,'Accessories',200,'2021-10-27','');
INSERT INTO Produit VALUES(null,'Computer',50,'2021-03-12','');
INSERT INTO Produit VALUES(null,'Automobiles',10000,'2021-01-24','');
INSERT INTO Produit VALUES(null,'Phones',600,'2021-03-21','');
INSERT INTO Produit VALUES(null,'Toys',600,'2021-03-21','');

/*IdImage   IdProduit   NomImage*/

INSERT INTO ImageProduit VALUES(null,1,'Shoes1.jpg');
INSERT INTO ImageProduit VALUES(null,1,'Shoes2.jpg');
INSERT INTO ImageProduit VALUES(null,1,'Shoes3.jpg');
INSERT INTO ImageProduit VALUES(null,1,'Shoes4.jpg');
INSERT INTO ImageProduit VALUES(null,2,'Bags1.jpg');
INSERT INTO ImageProduit VALUES(null,2,'Bags2.jpg');
INSERT INTO ImageProduit VALUES(null,2,'Bags3.jpg');
INSERT INTO ImageProduit VALUES(null,2,'Bags4.jpg');
INSERT INTO ImageProduit VALUES(null,3,'Men’s Clothing1.jpg');
INSERT INTO ImageProduit VALUES(null,3,'Men’s Clothing2.jpg');
INSERT INTO ImageProduit VALUES(null,3,'Women’s Clothing1.jpg');
INSERT INTO ImageProduit VALUES(null,3,'Women’s Clothing2.jpg');
INSERT INTO ImageProduit VALUES(null,4,'Jewelry1.jpg');
INSERT INTO ImageProduit VALUES(null,4,'Jewelry2.jpg');
INSERT INTO ImageProduit VALUES(null,4,'Watches1.jpg');
INSERT INTO ImageProduit VALUES(null,4,'Watches2.jpg');
INSERT INTO ImageProduit VALUES(null,5,'Accessories1.jpg');
INSERT INTO ImageProduit VALUES(null,5,'Accessories2.jpg');
INSERT INTO ImageProduit VALUES(null,5,'Accessories3.jpg');
INSERT INTO ImageProduit VALUES(null,5,'Accessories4.jpg');
INSERT INTO ImageProduit VALUES(null,6,'Computer1.jpg');
INSERT INTO ImageProduit VALUES(null,6,'Computer2.jpg');
INSERT INTO ImageProduit VALUES(null,6,'Computer3.jpg');
INSERT INTO ImageProduit VALUES(null,6,'Computer4.jpg');
INSERT INTO ImageProduit VALUES(null,7,'Automobiles1.jpg');
INSERT INTO ImageProduit VALUES(null,7,'Automobiles2.jpg');
INSERT INTO ImageProduit VALUES(null,7,'Automobiles3.jpg');
INSERT INTO ImageProduit VALUES(null,7,'Automobiles4.jpg');
INSERT INTO ImageProduit VALUES(null,8,'Phones1.jpg');
INSERT INTO ImageProduit VALUES(null,8,'Phones2.jpg');
INSERT INTO ImageProduit VALUES(null,8,'Phones3.jpg');
INSERT INTO ImageProduit VALUES(null,8,'Phones4.jpg');
INSERT INTO ImageProduit VALUES(null,9,'Toys1.jpg');
INSERT INTO ImageProduit VALUES(null,9,'Toys2.jpg');
INSERT INTO ImageProduit VALUES(null,9,'Toys3.jpg');
INSERT INTO ImageProduit VALUES(null,9,'Toys4.jpg');

/*IdProduit   IdImage   Quantite*/

INSERT INTO Stock VALUES(1,1,5);
INSERT INTO Stock VALUES(1,2,10);
INSERT INTO Stock VALUES(1,3,3);
INSERT INTO Stock VALUES(1,4,2);
INSERT INTO Stock VALUES(2,1,5);
INSERT INTO Stock VALUES(2,2,1);
INSERT INTO Stock VALUES(2,3,6);
INSERT INTO Stock VALUES(2,4,2);
INSERT INTO Stock VALUES(3,1,3);
INSERT INTO Stock VALUES(3,2,7);
INSERT INTO Stock VALUES(3,3,10);
INSERT INTO Stock VALUES(3,4,15);
INSERT INTO Stock VALUES(4,1,12);
INSERT INTO Stock VALUES(4,2,8);
INSERT INTO Stock VALUES(4,3,9);
INSERT INTO Stock VALUES(4,4,12);
INSERT INTO Stock VALUES(5,1,10);
INSERT INTO Stock VALUES(5,2,12);
INSERT INTO Stock VALUES(5,3,11);
INSERT INTO Stock VALUES(5,4,13);
INSERT INTO Stock VALUES(6,1,10);
INSERT INTO Stock VALUES(6,2,9);
INSERT INTO Stock VALUES(6,3,8);
INSERT INTO Stock VALUES(6,4,7);
INSERT INTO Stock VALUES(7,1,8);
INSERT INTO Stock VALUES(7,2,4);
INSERT INTO Stock VALUES(7,3,5);
INSERT INTO Stock VALUES(7,4,8);
INSERT INTO Stock VALUES(8,1,10);
INSERT INTO Stock VALUES(8,2,15);
INSERT INTO Stock VALUES(8,3,16);
INSERT INTO Stock VALUES(8,4,12);
INSERT INTO Stock VALUES(9,1,10);
INSERT INTO Stock VALUES(9,2,16);
INSERT INTO Stock VALUES(9,3,10);
INSERT INTO Stock VALUES(9,4,3);

/**/

/*INSERT INTO Vente VALUES(null,4,1,2,'2020-12-19');
INSERT INTO Vente VALUES(null,1,9,1,'2021-03-26');
INSERT INTO Vente VALUES(null,6,8,1,'2021-02-06');
INSERT INTO Vente VALUES(null,9,1,1,'2020-12-27');
INSERT INTO Vente VALUES(null,7,3,4,'2021-05-22');
INSERT INTO Vente VALUES(null,8,2,1,'2021-03-27');
INSERT INTO Vente VALUES(null,5,9,1,'2021-04-01');
INSERT INTO Vente VALUES(null,6,4,2,'2020-11-25');
INSERT INTO Vente VALUES(null,2,3,3,'2021-05-27');*/

/*IdSolde   IdProduit   IdImage   Pourcentage   EstValable*/

INSERT INTO Solde VALUES(null,1,1,10,'Oui');
INSERT INTO Solde VALUES(null,1,2,10,'Non');
INSERT INTO Solde VALUES(null,1,3,20,'Non');
INSERT INTO Solde VALUES(null,1,4,10,'Oui');
INSERT INTO Solde VALUES(null,2,1,10,'Non');
INSERT INTO Solde VALUES(null,2,2,5,'Non');
INSERT INTO Solde VALUES(null,2,3,5,'Oui');
INSERT INTO Solde VALUES(null,2,4,10,'Non');
INSERT INTO Solde VALUES(null,3,1,20,'Non');
INSERT INTO Solde VALUES(null,3,2,10,'Non');
INSERT INTO Solde VALUES(null,3,3,10,'Oui');
INSERT INTO Solde VALUES(null,3,4,5,'Non');
INSERT INTO Solde VALUES(null,4,1,10,'Non');
INSERT INTO Solde VALUES(null,4,2,20,'Oui');
INSERT INTO Solde VALUES(null,4,3,20,'Non');
INSERT INTO Solde VALUES(null,4,4,10,'Oui');
INSERT INTO Solde VALUES(null,5,1,10,'Non');
INSERT INTO Solde VALUES(null,5,2,5,'Non');
INSERT INTO Solde VALUES(null,5,3,5,'Non');
INSERT INTO Solde VALUES(null,5,4,5,'Oui');
INSERT INTO Solde VALUES(null,6,1,10,'Non');
INSERT INTO Solde VALUES(null,6,2,20,'Non');
INSERT INTO Solde VALUES(null,6,3,20,'Non');
INSERT INTO Solde VALUES(null,6,4,20,'Oui');
INSERT INTO Solde VALUES(null,7,1,10,'Non');
INSERT INTO Solde VALUES(null,7,2,10,'Non');
INSERT INTO Solde VALUES(null,7,3,20,'Oui');
INSERT INTO Solde VALUES(null,7,4,20,'Non');
INSERT INTO Solde VALUES(null,8,1,10,'Non');
INSERT INTO Solde VALUES(null,8,2,10,'Non');
INSERT INTO Solde VALUES(null,8,3,20,'Oui');
INSERT INTO Solde VALUES(null,8,4,20,'Non');
INSERT INTO Solde VALUES(null,9,1,10,'Non');
INSERT INTO Solde VALUES(null,9,2,5,'Non');
INSERT INTO Solde VALUES(null,9,3,5,'Non');
INSERT INTO Solde VALUES(null,9,4,5,'Oui');