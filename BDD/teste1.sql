DROP TABLE IF EXISTS Les_comptes ;/*creation table "Les_comptes"*/

CREATE TABLE Les_comptes 
   ( Compte_id INT NOT NULL/*Colonne ID*/
   , pseudo VARCHAR(50) NOT NULL/*Colonne pseudo*/
   , adresse_mail VARCHAR(100) NOT NULL/*Colonne mail*/
   , mdp VARCHAR(100) NOT NULL/*Colonne mot de passe*/
   , adresse VARCHAR(50) NOT NULL/*Colonne adresse*/
   , tel VARCHAR(100) NOT NULL/*Colonne telephone*/
   , langue VARCHAR(100) NOT NULL/*Colonne langue parlé*/
   , nbr_pts_total INT NOT NULL/*Colonne point total*/
   , nb_epreuve INT NOT NULL /*Colonne epreuves réussite*/
   )

DROP TABLE IF EXISTS Les_epreuves ;/*creation table "Les_epreuves"*/

CREATE TABLE Les_epreuves 
   ( epreuve_id INT NOT NULL/*Colonne ID*/
   , fichier VARCHAR(50) NOT NULL/*Colonne adresse*/
   , réponse VARCHAR(100) NOT NULL/*Colonne mail*/
   , nombre_point INT NOT NULL/*Colonne point de l'épreuve*/
   )

DROP TABLE IF EXISTS Création_epreuves ;/*creation table "Création_epreuves"*/

CREATE TABLE Création_epreuves 
   ( créa_epreuve_id INT NOT NULL/*Colonne ID*/
   , créa_fichier VARCHAR(50) NOT NULL/*Colonne adresse*/
   , créa_réponse VARCHAR(100) NOT NULL/*Colonne mail*/
   , créa_nombre_point INT NOT NULL/*Colonne point de l'épreuve*/
   )
