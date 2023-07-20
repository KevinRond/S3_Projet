-- ## Insertion des valeurs dans les tables ##

-- Insertion dans la table DEPARTEMENT (liste des departements)
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (1, 'Genie informatique et electrique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (2, 'Genie mecanique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (3, 'Genie robotique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (4, 'Genie chimique et biotechnologique');
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (5, 'Genie batiment et civil');

-- Insertion dans la table PROGRAMME (liste des programmes)
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (1, 'Baccalauréat en genie informatique', 1);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (2, 'Baccalauréat en genie electrique', 1);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (3, 'Baccalauréat en genie mecanique', 2);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (4, 'Baccalauréat en genie robotique', 3);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (5, 'Baccalauréat en genie chimique', 4);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (6, 'Baccalauréat en genie biotechnologique', 4);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (7, 'Baccalauréat en genie batiment', 5);
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (8, 'Baccalauréat en genie civil', 5);

-- Insertion dans la table TRIMESTRE (liste des trimestres)
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('A22');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('H23');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('E23');
INSERT INTO TRIMESTRE(id_trimestre) VALUES ('A23');

-- Insertion dans la table COURS (liste des cours)
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

-- Insertion dans la table PROGRAMME_COURS (association des cours aux programmes)
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

-- Insertion dans la table ETUDIANT (liste des etudiants)
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('gerz0501', 'Zachari', 'Gervais', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('jaqe1402', 'Emile', 'Jaques-Tighe', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('guea0902', 'Alexis', 'Guerard', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('bour0703', 'Raphael', 'Bouchard', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('barr1306', 'Raphael', 'Barrette', 1);
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('ronk2602', 'Kevin', 'Rondeau', 1);



-- Insertion dans la table ETUDIANT_COURS (Quels etudiants font quels cours)
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
-- ## bour0703 ##
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

-- Insertion dans la table EVALUATION (liste des evaluations par cours)
-- ## A22 ##
-- ## Cours GEN111 ##
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (1, 'GEN111', 'GEN111 - Rapport - APP3 GEGI + APP5 GRO','A22', 30);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (2, 'GEN111', 'GEN111 - Rapport - APP6','A22', 30);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (3, 'GEN111', 'GEN111 - Rapport moodle','A22', 30);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (4, 'GEN111', 'GEN111 - Essai strategies apprentissage','A22', 120);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (5, 'GEN111', 'Projet - Contrat d''equipe','A22', 40);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (6, 'GEN111', 'Projet - Rapport analyse et planification','A22', 50);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (7, 'GEN111', 'Projet - Audit #1','A22', 10);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (8, 'GEN111', 'Examen mi-session','A22', 60);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (9, 'GEN111', 'Projet - Audit #2','A22', 30);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (10, 'GEN111', 'Projet - Presentation orale','A22', 45);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (11, 'GEN111', 'Projet - Rapport de conception de projet','A22', 55);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (12, 'GEN111', 'Examen final - GEN101-GEN111','A22', 100);
-- ## Cours GEN181 ##
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (13, 'GEN181', 'App5b - Rapport de l''APP','A22', 60);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (14, 'GEN181', 'App5b - Examen sommatif','A22', 120);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (15, 'GEN181', 'Examen final - GEN181','A22', 120);
-- ## Cours GEN122 ##
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (16, 'GEN122', 'APP6 - Oral','A22', 70);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (17, 'GEN122', 'APP6 - Examen sommatif theorique','A22', 250);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (18, 'GEN122', 'Examen final - GEN136 / GEN122','A22', 280);
-- ## A23 ##
-- ## Cours GEN181 ##
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (19, 'GEN181', 'App5b - Rapport de l''APP','A23', 60);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (20, 'GEN181', 'App5b - Examen sommatif','A23', 120);
INSERT INTO EVALUATION(Id_evaluation, sigle, Nom_evaluation, id_trimestre, Ponderation) VALUES (21, 'GEN181', 'Examen final - GEN181','A23', 120);

-- ## H23 ##
-- ## Cours GEN200 ##
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (19, 'GEN200', 'Projet - Audit #1', 'H23', 50);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (20, 'GEN200' ,'Projet - Audit #2', 'H23', 55);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (21, 'GEN200' ,'Projet - Rapport mi-session', 'H23', 80);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (22, 'GEN200' ,'Projet - Audit #3', 'H23', 55);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (23, 'GEN200' ,'Projet - Demo final', 'H23', 40);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (24, 'GEN200', 'Projet - Rapport final', 'H23', 110);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (25, 'GEN200', 'Projet - Professionalisme', 'H23', 20);
INSERT INTO EVALUATION(id_evaluation, sigle, Nom_evaluation, id_trimestre, ponderation) VALUES (26, 'GEN200', 'Examens finaux - GEN200', 'H23', 190);

--# E23 ##
INSERT INTO EVALUATION(ID_EVALUATION, SIGLE,  NOM_EVALUATION, ID_TRIMESTRE, PONDERATION) VALUES (27, 'GIF302', 'Memoire daprobation de projet','E23', 120);
INSERT INTO EVALUATION(ID_EVALUATION, SIGLE,  NOM_EVALUATION, ID_TRIMESTRE, PONDERATION) VALUES (28, 'GIF302', 'Mini test SCRUM','E23', 60);
INSERT INTO EVALUATION(ID_EVALUATION, SIGLE,  NOM_EVALUATION, ID_TRIMESTRE, PONDERATION) VALUES (29, 'GIF302', 'Demo et rapport iteration 1','E23', 60);
INSERT INTO EVALUATION(ID_EVALUATION, SIGLE,  NOM_EVALUATION, ID_TRIMESTRE, PONDERATION) VALUES (30, 'GIF302', 'Demo et rapport iteration 2','E23', 60);
INSERT INTO EVALUATION(ID_EVALUATION, SIGLE,  NOM_EVALUATION, ID_TRIMESTRE, PONDERATION) VALUES (31, 'GIF302', 'Demo fin iteration 3','E23', 60);

-- Insertion dans la table COMPETENCE (liste des competences par cours)
-- ## A22 ##
-- ## Cours GEN101 ##
INSERT INTO COMPETENCE( nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN101', 'A22');
INSERT INTO COMPETENCE( nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN101', 'A22');
INSERT INTO COMPETENCE( nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GEN101', 'A22');
-- ## Cours GEN111 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN111', 'A22');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN111', 'A22');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GEN111', 'A22');
-- ## Cours GEN122 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN122', 'A22');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN122', 'A22');
-- ## Cours GEN135 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN135', 'A22');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN135', 'A22');
-- ## Cours GEN136 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN136', 'A22');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN136', 'A22');
-- ## Cours GEN181 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN181', 'A22');

-- ## H23 ##
-- ## Cours GEN200 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN200', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN200', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GEN200', 'H23');
-- ## Cours GEN211 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN211', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN211', 'H23');
-- ## Cours GEN230 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN230', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN230', 'H23');
-- ## Cours GEN241 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN241', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN241', 'H23');
-- ## Cours GEN272 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN272', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN272', 'H23');
-- ## Cours GIF242 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF242', 'H23');
-- ## Cours GIF250 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF250', 'H23');
-- ## Cours GIF270 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF270', 'H23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF270', 'H23');

-- ## E23 ##
-- ## Cours GIF302 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF302', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF302', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GIF302', 'E23');
-- ## Cours GIF332 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF332', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF332', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GIF332', 'E23');
-- ## Cours GIF333 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF333', 'E23');
-- ## Cours GIF350 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF350', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF350', 'E23');
-- ## Cours GIF371 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF371', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF371', 'E23');
-- ## Cours GIF380 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF380', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF380', 'E23');
-- ## Cours GIF391 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF391', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF391', 'E23');
-- ## Cours GIF620 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GIF620', 'E23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GIF620', 'E23');

-- ## A23 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN101', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN101', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GEN101', 'A23');
-- ## Cours GEN111 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN111', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN111', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp3', 'GEN111', 'A23');
-- ## Cours GEN122 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN122', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN122', 'A23');
-- ## Cours GEN135 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN135', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN135', 'A23');
-- ## Cours GEN136 ##
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN136', 'A23');
INSERT INTO COMPETENCE(nom_comp, Sigle, id_trimestre) VALUES ('Comp2', 'GEN136', 'A23');
-- ## Cours GEN181 ##
INSERT INTO COMPETENCE( nom_comp, Sigle, id_trimestre) VALUES ('Comp1', 'GEN181', 'A23');

-- Insertion des ponderation selon les competence des evaluations (COMPETENCEPOND)

INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (30,'Comp1', 'GEN111', 1,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (60,'Comp1', 'GEN111', 2,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (40,'Comp3', 'GEN111', 3,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (80,'Comp1', 'GEN111', 4,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (50,'Comp2', 'GEN111', 4,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (120,'Comp1', 'GEN111', 5,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (30,'Comp2', 'GEN111', 5,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (55,'Comp3', 'GEN111', 6,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (40,'Comp2', 'GEN111', 6,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (70,'Comp1', 'GEN111', 7,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (35,'Comp3', 'GEN111', 8,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (20,'Comp1', 'GEN111', 9,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (60,'Comp2', 'GEN111', 9,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (40,'Comp3', 'GEN111', 10,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (120,'Comp2', 'GEN111', 10,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (130,'Comp1', 'GEN111', 11,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (80,'Comp3', 'GEN111', 11,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (80,'Comp1', 'GEN111', 12,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (35,'Comp3', 'GEN111', 12,'A22');
-- ## Cours COMPETENCEPOND
-- A22      COMPETENCEPOND
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (60,'Comp1', 'GEN181', 13,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (120,'Comp1', 'GEN181', 14,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (120,'Comp1', 'GEN181', 15,'A22');
-- A23      COMPETENCEPOND
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (60,'Comp1', 'GEN181', 19,'A23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 120,'Comp1', 'GEN181', 20,'A23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 120,'Comp1', 'GEN181', 21,'A23');
-- ## Cours COMPETENCEPOND
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20,'Comp1', 'GEN122', 16,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 50,'Comp2', 'GEN122', 16,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 50,'Comp1', 'GEN122', 17,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 200,'Comp2', 'GEN122', 17,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (80,'Comp1', 'GEN122', 18,'A22');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 200,'Comp2', 'GEN122', 18,'A22');


-- ##H23##  COMPETENCEPOND
--##GEN200##COMPETENCEPOND
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (40, 'Comp1', 'GEN200', 19, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (10,'Comp2' , 'GEN200', 19, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (40, 'Comp1', 'GEN200', 20, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (15, 'Comp2', 'GEN200', 20, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (50, 'Comp1', 'GEN200', 21, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (30, 'Comp2', 'GEN200', 21, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 40, 'Comp1', 'GEN200', 22, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES (15, 'Comp1', 'GEN200', 23, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 40, 'Comp1', 'GEN200', 24, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 50, 'Comp2', 'GEN200', 24, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp3', 'GEN200', 24, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp1', 'GEN200', 25, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 50, 'Comp1', 'GEN200', 26, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 110, 'Comp2', 'GEN200', 26, 'H23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 30, 'Comp3', 'GEN200', 26, 'H23');

-- E23
--GIF302
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 40, 'Comp1', 'GIF302', 27, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 40, 'Comp2', 'GIF302', 27, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 40, 'Comp3', 'GIF302', 27, 'E23');

INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp1', 'GIF302', 28, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp2', 'GIF302', 28, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp3', 'GIF302', 28, 'E23');

INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp1', 'GIF302', 29, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp2', 'GIF302', 29, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp3', 'GIF302', 29, 'E23');

INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp1', 'GIF302', 30, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp2', 'GIF302', 30, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp3', 'GIF302', 30, 'E23');

INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp1', 'GIF302', 31, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp2', 'GIF302', 31, 'E23');
INSERT INTO COMPETENCEPOND(Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre) VALUES ( 20, 'Comp3', 'GIF302', 31, 'E23');

-- Insertion dans la table EVALUATION_COMPETENCE (notes obtenues aux evaluations)
-- ## Cours GEN111 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 30,'Comp1', 'GEN111', 1,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (54, 60,'Comp1', 'GEN111', 2,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15, 40,'Comp3', 'GEN111', 3,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (65, 80,'Comp1', 'GEN111', 4,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (40, 50,'Comp2', 'GEN111', 4,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (90, 120,'Comp1', 'GEN111', 5,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (24, 30,'Comp2', 'GEN111', 5,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50, 55,'Comp3', 'GEN111', 6,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20, 40,'Comp2', 'GEN111', 6,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (45, 70,'Comp1', 'GEN111', 7,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20, 35,'Comp3', 'GEN111', 8,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (17, 20,'Comp1', 'GEN111', 9,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (45, 60,'Comp2', 'GEN111', 9,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (34, 40,'Comp3', 'GEN111', 10,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (80, 120,'Comp2', 'GEN111', 10,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (70, 130,'Comp1', 'GEN111', 11,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (54, 80,'Comp3', 'GEN111', 11,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (65, 80,'Comp1', 'GEN111', 12,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (24, 35,'Comp3', 'GEN111', 12,'A22', 'gerz0501');
-- ## Cours GEN181 ##
-- A22
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (25, 60,'Comp1', 'GEN181', 13,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (55, 120,'Comp1', 'GEN181', 14,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50, 120,'Comp1', 'GEN181', 15,'A22', 'gerz0501');
-- A23
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (60, 60,'Comp1', 'GEN181', 19,'A23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (120, 120,'Comp1', 'GEN181', 20,'A23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (120, 120,'Comp1', 'GEN181', 21,'A23', 'gerz0501');
-- ## Cours GEN122 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15, 20,'Comp1', 'GEN122', 16,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (42, 50,'Comp2', 'GEN122', 16,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (27, 50,'Comp1', 'GEN122', 17,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (98.5, 200,'Comp2', 'GEN122', 17,'A22', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (73, 80,'Comp1', 'GEN122', 18,'A22','gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (133.5, 200,'Comp2', 'GEN122', 18,'A22', 'gerz0501');


-- ##H23##
--##GEN200##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (37.3, 40, 'Comp1', 'GEN200', 19, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (10, 10,'Comp2' , 'GEN200', 19, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (39.2, 40, 'Comp1', 'GEN200', 20, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15.6, 15, 'Comp2', 'GEN200', 20, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50.7, 50, 'Comp1', 'GEN200', 21, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (30, 30, 'Comp2', 'GEN200', 21, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (37.7, 40, 'Comp1', 'GEN200', 22, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15, 15, 'Comp1', 'GEN200', 23, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (36.4, 40, 'Comp1', 'GEN200', 24, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50.6, 50, 'Comp2', 'GEN200', 24, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20.2, 20, 'Comp3', 'GEN200', 24, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20, 20, 'Comp1', 'GEN200', 25, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (38.83, 50, 'Comp1', 'GEN200', 26, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (69.5, 110, 'Comp2', 'GEN200', 26, 'H23', 'gerz0501');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (25, 30, 'Comp3', 'GEN200', 26, 'H23', 'gerz0501');





-- Insertion dans la table EVALUATION_COMPETENCE (notes obtenues aux evaluations)
-- ## Cours GEN111 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 30,'Comp1', 'GEN111', 1,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 60,'Comp1', 'GEN111', 2,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 40,'Comp3', 'GEN111', 3,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 80,'Comp1', 'GEN111', 4,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 50,'Comp2', 'GEN111', 4,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 120,'Comp1', 'GEN111', 5,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 30,'Comp2', 'GEN111', 5,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 55,'Comp3', 'GEN111', 6,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 40,'Comp2', 'GEN111', 6,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 70,'Comp1', 'GEN111', 7,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 35,'Comp3','GEN111', 8,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 20,'Comp1', 'GEN111', 9,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 60,'Comp2', 'GEN111', 9,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 40,'Comp3', 'GEN111', 10,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 120,'Comp2', 'GEN111', 10,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 130,'Comp1', 'GEN111', 11,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 80,'Comp3','GEN111', 11,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 80,'Comp1','GEN111', 12,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (26, 35,'Comp3','GEN111', 12,'A22', 'guea0902');
-- ## Cours GEN181 ##
-- A22
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (0, 60,'Comp1', 'GEN181', 13,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (0, 120,'Comp1', 'GEN181', 14,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (0, 120,'Comp1', 'GEN181', 15,'A22', 'guea0902');
-- A23
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (60, 60,'Comp1', 'GEN181', 19,'A23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (120, 120,'Comp1', 'GEN181', 20,'A23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (120, 120,'Comp1', 'GEN181', 21,'A23', 'guea0902');
-- ## Cours GEN122 ##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15, 20,'Comp1', 'GEN122', 16,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (42, 50,'Comp2', 'GEN122', 16,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (27, 50,'Comp1', 'GEN122', 17,'A22', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (98.5, 200,'Comp2', 'GEN122', 17,'A22', 'guea0902');


-- ##H23##
--##GEN200##
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (19, 40, 'Comp1', 'GEN200', 19, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (10, 10,'Comp2' , 'GEN200', 19, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (39.2, 40, 'Comp1', 'GEN200', 20, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15.6, 15, 'Comp2', 'GEN200', 20, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50, 50, 'Comp1', 'GEN200', 21, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (30, 30, 'Comp2', 'GEN200', 21, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (37.7, 40, 'Comp1', 'GEN200', 22, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (15, 15, 'Comp1', 'GEN200', 23, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (36.4, 40, 'Comp1', 'GEN200', 24, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (50.6, 50, 'Comp2', 'GEN200', 24, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20.2, 20, 'Comp3', 'GEN200', 24, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (20, 20, 'Comp1', 'GEN200', 25, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (38.83, 50, 'Comp1', 'GEN200', 26, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (69.5, 110, 'Comp2', 'GEN200', 26, 'H23', 'guea0902');
INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip) VALUES (25, 30, 'Comp3', 'GEN200', 26, 'H23', 'guea0902');
