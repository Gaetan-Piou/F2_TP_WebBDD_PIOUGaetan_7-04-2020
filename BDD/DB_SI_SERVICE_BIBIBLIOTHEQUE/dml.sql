USE DB_SI_SERVICE_BIBIBLIOTHEQUE;

INSERT INTO Service(nomService,localisation)
VALUES
	("Ressources Humaines","Paris"),
	("Production","Amsterdam"),
	("Marketing","Lyon"),
	("Recherche et Developpement","Strasbourg");


INSERT INTO Employe(numeroEmploye,nomEmploye,adresse,nomService)
VALUES
	(1,"Gaëtan PIOU","5 rue de Colmar","Recherche et Developpement"),
	(2,"Luc CORNU","14 rue du Retard","Production"),
	(3,"Nicolas STECKEL",NULL,"Ressources Humaines"),
	(4,"Joffrey ZIEGELTRUM","1 Boulevard de la Biere","Recherche et Developpement"),
	(5,"Olivier P.","11 rue de la chute du mur","Marketing");


INSERT INTO Auteur(pseudo)
VALUES
	("Derek"),
	("Stepheunne Hauquinne"),
	("John Lang"),
	("Thomas");


INSERT INTO Ouvrage(ISBN,titre,prix,pseudo)
VALUES
	("978-8-1599-2837-6","De la Production a la Distribution",19.99,"Derek"),
	("978-1-3928-2689-8","Comment j'ai perdu mes jambes",9.99,"Stepheunne Hauquinne"),
	("978-1-8447-4683-5","Majajaj au Pays des Flajaj",7.99,"Thomas"),
	("978-5-1634-8773-8","Majajaj et le Flajajaj du Pays des Flajaj",7.99,"Thomas"),
	("978-5-7444-7233-7","Majajaj et Bobin, A la recherche du Gujuj",7.99,"Thomas"),
	("978-2-913714-67-0","Le Donjon de Naheulbeuk, Tome 1",14.95,"John Lang"),
	("978-2-913714-81-6","Le Donjon de Naheulbeuk, Tome 2",14.95,"John Lang");


INSERT INTO Exemplaire(numeroExemplaire,dateAchat,ISBN)
VALUES
	(1,STR_TO_DATE("20/04/2019","%d/%m/%Y"),"978-8-1599-2837-6"),
	(2,STR_TO_DATE("14/02/2017","%d/%m/%Y"),"978-1-3928-2689-8"),
	(3,STR_TO_DATE("14/02/2017","%d/%m/%Y"),"978-1-3928-2689-8"),
	(4,STR_TO_DATE("17/03/2017","%d/%m/%Y"),"978-1-3928-2689-8"),
	(5,STR_TO_DATE("03/07/2006","%d/%m/%Y"),"978-2-913714-67-0"),
	(6,STR_TO_DATE("03/07/2006","%d/%m/%Y"),"978-2-913714-81-6"),
	(7,STR_TO_DATE("11/06/2009","%d/%m/%Y"),"978-1-8447-4683-5"),
	(8,STR_TO_DATE("19/10/2012","%d/%m/%Y"),"978-5-1634-8773-8"),
	(9,STR_TO_DATE("28/12/2016","%d/%m/%Y"),"978-5-7444-7233-7");


INSERT INTO Emprunt(numeroEmprunt,dateDebut,dateFin,numeroEmploye,numeroExemplaire)
VALUES
	(1,STR_TO_DATE("20/12/2018","%d/%m/%Y"),STR_TO_DATE("10/01/2019","%d/%m/%Y"),3,7),
	(2,STR_TO_DATE("31/01/2019","%d/%m/%Y"),STR_TO_DATE("15/02/2019","%d/%m/%Y"),2,5),
	(3,STR_TO_DATE("16/02/2019","%d/%m/%Y"),STR_TO_DATE("05/03/2019","%d/%m/%Y"),1,5),
	(4,STR_TO_DATE("01/03/2019","%d/%m/%Y"),STR_TO_DATE("19/03/2019","%d/%m/%Y"),2,6),
	(5,STR_TO_DATE("20/03/2019","%d/%m/%Y"),STR_TO_DATE("09/04/2019","%d/%m/%Y"),1,6),
	(6,STR_TO_DATE("07/04/2019","%d/%m/%Y"),STR_TO_DATE("30/04/2019","%d/%m/%Y"),3,8),
	(7,STR_TO_DATE("20/04/2019","%d/%m/%Y"),STR_TO_DATE("30/11/2019","%d/%m/%Y"),5,1),
	(8,STR_TO_DATE("05/05/2019","%d/%m/%Y"),STR_TO_DATE("11/06/2019","%d/%m/%Y"),3,9),
	(9,STR_TO_DATE("09/05/2019","%d/%m/%Y"),STR_TO_DATE("06/06/2019","%d/%m/%Y"),4,2),
	(10,STR_TO_DATE("15/05/2019","%d/%m/%Y"),STR_TO_DATE("19/05/2019","%d/%m/%Y"),2,7),
	(11,STR_TO_DATE("26/06/2019","%d/%m/%Y"),STR_TO_DATE("30/06/2019","%d/%m/%Y"),1,7),
	(12,STR_TO_DATE("03/07/2019","%d/%m/%Y"),STR_TO_DATE("27/07/2019","%d/%m/%Y"),1,8),
	(13,STR_TO_DATE("05/07/2019","%d/%m/%Y"),STR_TO_DATE("27/07/2019","%d/%m/%Y"),1,7),
	(14,STR_TO_DATE("12/07/2019","%d/%m/%Y"),STR_TO_DATE("25/07/2019","%d/%m/%Y"),4,5),
	(15,STR_TO_DATE("25/07/2019","%d/%m/%Y"),STR_TO_DATE("31/07/2019","%d/%m/%Y"),4,6),
	(16,STR_TO_DATE("02/08/2019","%d/%m/%Y"),STR_TO_DATE("11/09/2019","%d/%m/%Y"),1,9),
	(17,STR_TO_DATE("02/09/2019","%d/%m/%Y"),STR_TO_DATE("02/10/2019","%d/%m/%Y"),2,2),
	(18,STR_TO_DATE("10/09/2019","%d/%m/%Y"),STR_TO_DATE("20/10/2019","%d/%m/%Y"),3,3),
	(19,STR_TO_DATE("01/10/2019","%d/%m/%Y"),STR_TO_DATE("27/10/2019","%d/%m/%Y"),1,4),
	(20,STR_TO_DATE("01/12/2019","%d/%m/%Y"),STR_TO_DATE("20/01/2020","%d/%m/%Y"),3,1),
	(21,STR_TO_DATE("10/01/2020","%d/%m/%Y"),STR_TO_DATE("12/02/2019","%d/%m/%Y"),4,7),
	(22,STR_TO_DATE("13/02/2020","%d/%m/%Y"),STR_TO_DATE("20/04/2020","%d/%m/%Y"),4,1),
	(23,STR_TO_DATE("21/04/2020","%d/%m/%Y"),STR_TO_DATE("31/05/2020","%d/%m/%Y"),1,1);