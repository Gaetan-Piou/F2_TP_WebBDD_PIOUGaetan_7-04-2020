DROP DATABASE IF EXISTS DB_SI_SERVICE_BIBIBLIOTHEQUE;
CREATE DATABASE IF NOT EXISTS DB_SI_SERVICE_BIBIBLIOTHEQUE;

USE DB_SI_SERVICE_BIBIBLIOTHEQUE;


DROP TABLE IF EXISTS Service;
CREATE TABLE IF NOT EXISTS Service(
	nomService varchar(50) not null primary key,
	localisation varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;


DROP TABLE IF EXISTS Employe;
CREATE TABLE IF NOT EXISTS Employe(
	numeroEmploye int not null primary key,
	nomEmploye varchar(50),
	adresse varchar(100),
	nomService varchar(50) not null,
	CONSTRAINT serviceExistant FOREIGN KEY(nomService) REFERENCES Service(nomService)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;


DROP TABLE IF EXISTS Auteur;
CREATE TABLE IF NOT EXISTS Auteur(
	pseudo varchar(50) not null primary key
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;


DROP TABLE IF EXISTS Ouvrage;
CREATE TABLE IF NOT EXISTS Ouvrage(
	ISBN varchar(17) not null primary key,
	titre varchar(100),
	prix numeric(6,2),
	pseudo varchar(50) not null,
	CONSTRAINT auteurExistant FOREIGN KEY(pseudo) REFERENCES Auteur(pseudo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;


DROP TABLE IF EXISTS Exemplaire;
CREATE TABLE IF NOT EXISTS Exemplaire(
	numeroExemplaire int not null primary key,
	dateAchat date,
	ISBN varchar(17) not null,
	CONSTRAINT ouvrageExistant FOREIGN KEY(ISBN) REFERENCES Ouvrage(ISBN)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;


DROP TABLE IF EXISTS Emprunt;
CREATE TABLE IF NOT EXISTS Emprunt(
	numeroEmprunt int not null primary key,
	dateDebut date,
	dateFin date,
	numeroEmploye int not null,
	numeroExemplaire int not null,
	CONSTRAINT employeExistant FOREIGN KEY(numeroEmploye) REFERENCES Employe(numeroEmploye),
	CONSTRAINT exemplaireExistant FOREIGN KEY(numeroExemplaire) REFERENCES Exemplaire(numeroExemplaire)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;