DROP TABLE IF EXISTS Les_comptes ;/*creation table "Les_comptes"*/

CREATE TABLE Les_comptes 
   ( Compte_id INT NOT NULL/*Colonne ID*/
   , pseudo VARCHAR(50) NOT NULL/*Colonne pseudo*/
   , adresse_mail VARCHAR(100) NOT NULL/*Colonne mail*/
   , mdp VARCHAR(100) NOT NULL/*Colonne mot de passe*/
   , adresse VARCHAR(50) NOT NULL/*Colonne adresse*/
   , tel VARCHAR(100) NOT NULL/*Colonne telephone*/
   , langue VARCHAR(100) NOT NULL/*Colonne langue parl�*/
   , nbr_pts_total INT NOT NULL/*Colonne point total*/
   , nb_epreuve INT NOT NULL /*Colonne epreuves r�ussite*/
   )

DROP TABLE IF EXISTS Les_epreuves ;/*creation table "Les_epreuves"*/

CREATE TABLE Les_epreuves 
   ( epreuve_id INT NOT NULL/*Colonne ID*/
   , fichier VARCHAR(50) NOT NULL/*Colonne adresse*/
   , r�ponse VARCHAR(100) NOT NULL/*Colonne mail*/
   , nombre_point INT NOT NULL/*Colonne point de l'�preuve*/
   )

DROP TABLE IF EXISTS Cr�ation_epreuves ;/*creation table "Cr�ation_epreuves"*/

CREATE TABLE Cr�ation_epreuves 
   ( cr�a_epreuve_id INT NOT NULL/*Colonne ID*/
   , cr�a_fichier VARCHAR(50) NOT NULL/*Colonne adresse*/
   , cr�a_r�ponse VARCHAR(100) NOT NULL/*Colonne mail*/
   , cr�a_nombre_point INT NOT NULL/*Colonne point de l'�preuve*/
   )
