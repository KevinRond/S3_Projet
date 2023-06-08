-- ## Insertion des valeurs dans les tables ##

-- Insertion dans la table DEPARTEMENT
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (1, 'Genie informatique et electrique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (2, 'Genie mecanique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (3, 'Genie robotique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (4, 'Genie chimique et biotechnologique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (5, 'Genie batiment et civil');

-- Insertion dans la table PROGRAMME
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (1, 'Baccalauréat en genie informatique', 1);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (2, 'Baccalauréat en genie electrique', 1);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (3, 'Baccalauréat en genie mecanique', 2);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (4, 'Baccalauréat en genie robotique', 3);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (5, 'Baccalauréat en genie chimique', 4);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (6, 'Baccalauréat en genie biotechnologique', 4);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (7, 'Baccalauréat en genie batiment', 5);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (8, 'Baccalauréat en genie civil', 5);

-- Insertion dans la table TRIMESTRE
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('A22');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('H23');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('E23');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('A23');

-- Insertion dans la table COURS
-- ## Session A22 ##
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN101','A22', 'Résolution de problème et conception en génie');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN111','A22', 'La communication et le travail en équipe');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN122','A22', 'Équations différentielles linéaires');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN135','A22', 'Circuits électriques I');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN136','A22', 'Circuits électriques II');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN181','A22', 'Modélisation 3D');
-- ## Session H23
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN200','H23', 'Conception d''un systeme electronique et informatique');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN211','H23', 'Mathématiques des signaux à temps continu');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN230','H23', 'Électronique analogique I');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN241','H23', 'Modélisation et programmation orientées objet');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN272','H23', 'Ingénierie durable et évaluation des impacts environnementaux');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF242','H23', 'Concepts avancés en programmation orientée objet');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF250','H23', 'Interfaces utilisateurs graphiques');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF270','H23', 'Structures de données et complexité');
-- ## Session E23 ##
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF302','E23', 'Conception d''un système informatique distribué');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF332','E23', 'Réseaux et protocoles de communication');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF333','E23', 'Théorie des groupes et algèbre abstraite en ingénierie');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF350','E23', 'Modèles de conception');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF371','E23', 'Ondes guidées');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF380','E23', 'Sécurité informatique et cryptographie');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF391','E23', 'Systèmes distribués et informatique en nuage');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GIF620','E23', 'Bases de données');
-- ## Session A23 ##
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN101','A23', 'Résolution de problème et conception en génie');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN111','A23', 'La communication et le travail en équipe');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN122','A23', 'Équations différentielles linéaires');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN135','A23', 'Circuits électriques I');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN136','A23', 'Circuits électriques II');
INSERT INTO COURS(Sigle,id_trimestre,Nom_cours) VALUES ('GEN181','A23', 'Modélisation 3D');

-- Insertion dans la table PROGRAMME_COURS
-- ## A22 ##
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN101','A22');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN111','A22');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN122','A22');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN135','A22');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN136','A22');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN181','A22');
-- ## H23 ##
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN200','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN211','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN230','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN241','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN272','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF242','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF250','H23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF270','H23');
-- ## E23 ##
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF302','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF332','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF333','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF350','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF371','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF380','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF391','E23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GIF620','E23');
-- ## A23 ##
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN101','A23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN111','A23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN122','A23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN135','A23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN136','A23');
INSERT INTO PROGRAMMECOURS(Id_programme, Sigle,id_trimestre) VALUES (1, 'GEN181','A23');

-- Insertion dans la table ETUDIANT
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('gerz0501', 'Zachari', 'Gervais', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('jaqe1402', 'Emile', 'Jaques-Tighe', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('guea0902', 'Alexis', 'Guerard', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('bour0703', 'Raphael', 'Bouchard', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('barr1306', 'Raphael', 'Barrette', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('ronk2602', 'Keven', 'Rouleau', 1);


-- Insertion dans la table ETUDIANT_COURS
-- ## gerz0501 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('gerz0501', 'GEN181', 'A23');
-- ## jaqe1402 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('jaqe1402', 'GEN181', 'A23');
-- ## guea0902 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('guea0902', 'GEN181', 'A23');
-- ## gerz0501 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('bour0703', 'GEN181', 'A23');
-- ## barr1306 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('barr1306', 'GEN181', 'A23');
-- ## ronk2602 ##
-- ## A22 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN101', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN111', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN122', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN135', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN136', 'A22');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN181', 'A22');
-- ## H23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN200', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN211', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN230', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN241', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN272', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF242', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF250', 'H23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF270', 'H23');
-- ## E23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF302', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF332', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF333', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF350', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF371', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF380', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF391', 'E23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GIF620', 'E23');
-- ## A23 ##
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN101', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN111', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN122', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN135', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN136', 'A23');
INSERT INTO ETUDIANTCOURS(Cip, Sigle, id_trimestre) VALUES ('ronk2602', 'GEN181', 'A23');

-- Insertion dans la table EVALUATION
-- ## Cours GEN111 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (1, 'GEN111 - Rapport - APP3 GEGI + APP5 GRO', 30);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (2, 'GEN111 - Rapport - APP6', 30);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (3, 'GEN111 - Rapport moodle', 30);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (4, 'GEN111 - Essai strategies apprentissage', 120);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (5, 'Projet - Contrat d''equipe', 40);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (6, 'Projet - Rapport analyse et planification', 50);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (7, 'Projet - Audit #1', 10);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (8, 'Examen mi-session', 60);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (9, 'Projet - Audit #2', 30);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (10, 'Projet - Presentation orale', 45);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (11, 'Projet - Rapport de conception de projet', 55);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (12, 'Examen final - GEN101-GEN111', 100);
-- ## Cours GEN181 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (13, 'App5b - Rapport de l''APP', 60);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (14, 'App5b - Examen sommatif', 120);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (15, 'Examen final - GEN181', 120);
-- ## Cours GEN122 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (16, 'APP6 - Oral', 70);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (17, 'APP6 - Examen sommatif theorique', 250);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (18, 'Examen final - GEN136 / GEN122', 280);
-- ## H23 ##
-- ## Cours GEN200 ##
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (19, 'Projet - Audit #1', 50);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (20, 'Projet - Audit #2', 55);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (21, 'Projet - Rapport mi-session', 80);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (22, 'Projet - Audit #3', 55);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (23, 'Projet - Demo final', 40);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (24, 'Projet - Rapport final', 110);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (25, 'Projet - Professionalisme', 20);
INSERT INTO EVALUATION(id_evaluation, nom_evaluation, ponderation) VALUES (26, 'Examens finaux - GEN200', 190);

-- Insertion dans la table COMPETENCE
-- ## A22 ##
-- ## Cours GEN101 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (1, 'Comp1', 'GEN101', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (2, 'Comp2', 'GEN101', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (3, 'Comp3', 'GEN101', 'A22');
-- ## Cours GEN111 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (4, 'Comp1', 'GEN111', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (5, 'Comp2', 'GEN111', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (6, 'Comp3', 'GEN111', 'A22');
-- ## Cours GEN122 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (7, 'Comp1', 'GEN122', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (8, 'Comp2', 'GEN122', 'A22');
-- ## Cours GEN135 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (9, 'Comp1', 'GEN135', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (10, 'Comp2', 'GEN135', 'A22');
-- ## Cours GEN136 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (11, 'Comp1', 'GEN136', 'A22');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (12, 'Comp2', 'GEN136', 'A22');
-- ## Cours GEN181 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (13, 'Comp1', 'GEN181', 'A22');

-- ## H23 ##
-- ## Cours GEN200 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (14, 'Comp1', 'GEN200', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (15, 'Comp2', 'GEN200', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (16, 'Comp3', 'GEN200', 'H23');
-- ## Cours GEN211 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (17, 'Comp1', 'GEN211', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (18, 'Comp2', 'GEN211', 'H23');
-- ## Cours GEN230 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (19, 'Comp1', 'GEN230', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (20, 'Comp2', 'GEN230', 'H23');
-- ## Cours GEN241 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (21, 'Comp1', 'GEN241', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (22, 'Comp2', 'GEN241', 'H23');
-- ## Cours GEN272 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (23, 'Comp1', 'GEN272', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (24, 'Comp2', 'GEN272', 'H23');
-- ## Cours GIF242 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (25, 'Comp1', 'GIF242', 'H23');
-- ## Cours GIF250 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (26, 'Comp1', 'GIF250', 'H23');
-- ## Cours GIF270 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (27, 'Comp1', 'GIF270', 'H23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (28, 'Comp2', 'GIF270', 'H23');

-- ## E23 ##
-- ## Cours GIF302 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (29, 'Comp1', 'GIF302', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (30, 'Comp2', 'GIF302', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (31, 'Comp3', 'GIF302', 'E23');
-- ## Cours GIF332 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (32, 'Comp1', 'GIF332', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (33, 'Comp2', 'GIF332', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (34, 'Comp3', 'GIF332', 'E23');
-- ## Cours GIF333 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (35, 'Comp1', 'GIF333', 'E23');
-- ## Cours GIF350 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (36, 'Comp1', 'GIF350', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (37, 'Comp2', 'GIF350', 'E23');
-- ## Cours GIF371 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (38, 'Comp1', 'GIF371', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (39, 'Comp2', 'GIF371', 'E23');
-- ## Cours GIF380 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (40, 'Comp1', 'GIF380', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (41, 'Comp2', 'GIF380', 'E23');
-- ## Cours GIF391 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (42, 'Comp1', 'GIF391', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (43, 'Comp2', 'GIF391', 'E23');
-- ## Cours GIF620 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (44, 'Comp1', 'GIF620', 'E23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (45, 'Comp2', 'GIF620', 'E23');

-- ## A23 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (46, 'Comp1', 'GEN101', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (47, 'Comp2', 'GEN101', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (48, 'Comp3', 'GEN101', 'A23');
-- ## Cours GEN111 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (49, 'Comp1', 'GEN111', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (50, 'Comp2', 'GEN111', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (51, 'Comp3', 'GEN111', 'A23');
-- ## Cours GEN122 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (52, 'Comp1', 'GEN122', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (53, 'Comp2', 'GEN122', 'A23');
-- ## Cours GEN135 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (54, 'Comp1', 'GEN135', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (55, 'Comp2', 'GEN135', 'A23');
-- ## Cours GEN136 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (56, 'Comp1', 'GEN136', 'A23');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (57, 'Comp2', 'GEN136', 'A23');
-- ## Cours GEN181 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle, id_trimestre) VALUES (58, 'Comp1', 'GEN181', 'A23');

-- Insertion dans la table EVALUATION_COMPETENCE
-- ## Cours GEN111 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (26, 30, 4, 'GEN111', 1);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (21, 30, 4, 'GEN111', 2);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (30, 30, 6, 'GEN111', 3);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (28, 30, 4, 'GEN111', 4);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (74, 90, 6, 'GEN111', 4);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (20.6, 20, 4, 'GEN111', 5);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (18.5, 20, 5, 'GEN111', 5);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (16.9, 30, 4, 'GEN111', 6);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (19.9, 20, 5, 'GEN111', 6);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (9.9, 10, 4, 'GEN111', 7);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (55.5, 60, 5, 'GEN111', 8);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (10.3, 10, 4, 'GEN111', 9);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (20.5, 20, 5, 'GEN111', 9);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (23.6, 30, 4, 'GEN111', 10);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (13.7, 15, 5, 'GEN111', 10);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (30.1, 40, 4, 'GEN111', 11);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (12.3, 15, 5, 'GEN111', 11);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (30.17, 40, 4, 'GEN111', 12);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (41.01, 60, 5, 'GEN111', 12);
-- ## Cours GEN181 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (58, 60, 13, 'GEN181', 13);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (95, 120, 13, 'GEN181', 14);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (87, 120, 13, 'GEN181', 15);
-- ## Cours GEN122 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (15, 20, 7, 'GEN122', 16);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (42, 50, 8, 'GEN122', 16);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (27, 50, 7, 'GEN122', 17);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (98.5, 200, 8, 'GEN122', 17);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (73, 80, 7, 'GEN122', 18);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (133.5, 200, 8, 'GEN122', 18);

-- ##H23##
--##GEN200##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (37.3, 40, 14, 'GEN200', 19);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (10, 10, 15, 'GEN200', 19);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (39.2, 40, 14, 'GEN200', 20);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (15.6, 15, 15, 'GEN200', 20);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (50.7, 50, 15, 'GEN200', 21);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (30, 30, 16, 'GEN200', 21);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (37.7, 40, 14, 'GEN200', 22);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (15, 15, 15, 'GEN200', 22);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (33.7, 40, 14, 'GEN200', 23);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (36.4, 40, 14, 'GEN200', 24);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (50.6, 50, 15, 'GEN200', 24);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (20.2, 20, 16, 'GEN200', 24);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (20, 20, 16, 'GEN200', 25);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (38.83, 50, 14, 'GEN200', 26);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (69.5, 110, 15, 'GEN200', 26);
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (25, 30, 16, 'GEN200', 26);
-- Insertion dans la table ETUDIANT_EVALUATION
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (1, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (2, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (3, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (4, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (5, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (6, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (7, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (8, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (9, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (10, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (11, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (12, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (13, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (14, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (15, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (16, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (17, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (18, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (19, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (20, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (21, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (22, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (23, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (24, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (25, 'gerz0501');
INSERT INTO ETUDIANTEVALUATION(Id_evaluation, Cip) VALUES (26, 'gerz0501');

