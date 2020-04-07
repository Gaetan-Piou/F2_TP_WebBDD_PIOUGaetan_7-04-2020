	SELECT * FROM Auteur;

	SELECT * FROM Employe;

	SELECT * FROM Ouvrage;

	SELECT * FROM Emprunt;

	SELECT nomEmploye FROM Employe WHERE numeroEmploye = 1;

	SELECT nomEmploye FROM Employe WHERE adresse = NULL;

	SELECT nomEmploye, numeroEmploye FROM Employe WHERE numeroEmploye IN (SELECT numeroEmploye FROM Emprunt);

	/*SELECT 
		Employe.nomEmploye, Employe.numeroEmploye, Emprunt.numeroEmprunt, Emprunt.dateDebut, Emprunt.dateFin, CURDATE()
		FROM
			Employe, Emprunt, Exemplaire, Ouvrage
		WHERE 
			Employe.numeroEmploye IN (
				SELECT 
					numeroEmploye 
					FROM 
						Emprunt 
					WHERE 
						IF YEAR(dateDebut) = YEAR(CURDATE())
						BEGIN
							IF MONTH(dateDebut) = YEAR(CURDATE())
							BEGIN
								DAY(dateDebut) < DAY(CURDATE())
							END
							ELSE
							BEGIN
								MONTH(dateDebut) < MONTH(CURDATE())
							END
						END
						ELSE
						BEGIN
							YEAR(dateDebut) < YEAR(CURDATE())
						END
					AND
						IF(YEAR(dateFin) = YEAR(CURDATE()))
						BEGIN
							IF(MONTH(dateFin) = YEAR(CURDATE()))
							BEGIN
								DAY(dateFin) > DAY(CURDATE())
							END
							ELSE
							BEGIN
								MONTH(dateFin) > MONTH(CURDATE())
							END
						END
						ELSE
						BEGIN
							YEAR(dateFin) > YEAR(CURDATE())
						END
			) 
		AND
			Emprunt.numeroEmprunt IN (
				SELECT 
					numeroEmploye 
					FROM 
						Emprunt 
						WHERE 
							YEAR(dateDebut) <= YEAR(CURDATE())
						AND
							MONTH(dateDebut) <= MONTH(CURDATE())
						AND
							DAY(dateDebut) <= DAY(CURDATE()) 
						AND
							YEAR(dateFin) >= YEAR(CURDATE())
						AND
							MONTH(dateFin) >= MONTH(CURDATE())
						AND
							DAY(dateFin) >= DAY(CURDATE()) 
			) 
		AND 
			Ouvrage.ISBN IN (
				SELECT 
					ISBN 
					FROM 
						Exemplaire 
					WHERE
						numeroExemplaire IN (
							SELECT
								numeroExemplaire
								FROM
									Emprunt
								WHERE 
									dateDebut < CURDATE() 
								AND 
									dateFin > CURDATE()
						)
					);*/

	SELECT pseudo, Titre FROM Ouvrage WHERE Prix > 10;