CREATE TABLE IF NOT EXISTS Recette (
		ID_Recette INT(4) unsigned NOT NULL AUTO_INCREMENT,
		Nom_Recette VARCHAR(40),
		Ingredient1 VARCHAR(40),
		Ingredient2 VARCHAR(40),
		Ingredient3 VARCHAR(40),
		PRIMARY KEY(ID_Recette)
	);
	
	
	CREATE TABLE IF NOT EXISTS Utilisateur (
		ID_Utilisateur INT(4) unsigned NOT NULL AUTO_INCREMENT,
		Nom_Utilisateur VARCHAR(40),
		PRIMARY KEY(ID_Utilisateur)
	);
	
	
	
	CREATE TABLE IF NOT EXISTS Ingrédient (
		ID_Ingrédient INT(4) unsigned NOT NULL AUTO_INCREMENT,
		Nom_Ingrédient VARCHAR(40),
		Fraicheur_Ingrédient INT(4),
		PRIMARY KEY(ID_Ingrédient)
	);
	
	
	
	CREATE TABLE IF NOT EXISTS Fournisseur (
		ID_Fournisseur INT(4) unsigned NOT NULL AUTO_INCREMENT,
		Nom_Fournisseur VARCHAR(40),
		Produit_Livrer VARCHAR(40),
		PRIMARY KEY(ID_Fournisseur)
	);
	
	
	
	
	CREATE TABLE IF NOT EXISTS Reserve (
		Nom_Ingredient VARCHAR(40),
		Fraicheur_Ingrédient INT(4),
		Quantite INT(4)
	);
	
	CREATE TABLE IF NOT EXISTS Chambre_Froide (
		Nom_Ingredient VARCHAR(40),
		Fraicheur_Ingrédient INT(4),
		Quantite INT(4)
	);
	
	CREATE TABLE IF NOT EXISTS Congelateur (
		Nom_Ingredient VARCHAR(40),
		Fraicheur_Ingrédient INT(4),
		Quantite INT(4)
	);
	