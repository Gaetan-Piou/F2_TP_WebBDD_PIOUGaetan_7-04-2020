--Repartition du chiffre d'affaires par localite et par produit
SELECT 
	localite, designation, Produit.numProduit, prixUnitaire*qteCommande
	FROM
		Client, Commande, Detail, Produit
	WHERE
		Client.numClient = Commande.numClient AND Commande.numBonCommande = Detail.numCommande AND Detail.numProduit = Produit.numProduit
	GROUP BY
		Ville, Produit.numProduit


