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

-- Insertion dans la table COURS
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('GEN101', 'Résolution de problème et conception en génie');
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('GIF242', 'Concepts avancés en programmation orientée objet');
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('GIN120', 'Santé et sécurité du travail');

-- Insertion dans la table PROGRAMME_COURS
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'GEN101');
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'GIF242');
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'GIN120');

-- Insertion dans la table ETUDIANT
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('dalv1001', 'Vincent', 'Dallaire', 1);

-- Insertion dans la table ETUDIANT_COURS
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('dalv1001', 'GEN101');
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('dalv1001', 'GIF242');
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('dalv1001', 'GIN120');

-- Insertion dans la table EVALUATION
-- ## Cours 1 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (1, 'Validation', 0.1);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (2, 'Examen somatif theorique', 0.2);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (3, 'Examen somatif pratique', 0.2);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (4, 'Examen final', 0.5);
-- ## Cours 2 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (5, 'Examen somatif', 0.4);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (6, 'Examen final', 0.6);
-- ## Cours 3 ##
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (7, 'Validation', 0.05);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (8, 'Examen somatif theorique', 0.28);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (9, 'Examen somatif pratique', 0.15);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (10, 'Examen final theorique', 0.32);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (11, 'Examen final pratique', 0.2);

-- Insertion dans la table COMPETENCE
-- ## Cours 1 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (1, 'Comp1', 'GEN101');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (2, 'Comp2', 'GEN101');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (3, 'Comp3', 'GEN101');
-- ## Cours 2 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (4, 'Comp1', 'GIF242');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (5, 'Comp2', 'GIF242');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (6, 'Comp3', 'GIF242');
-- ## Cours 3 ##
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (7, 'Comp1', 'GIN120');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (8, 'Comp2', 'GIN120');

-- Insertion dans la table EVALUATION_COMPETENCE
-- ## Cours 1 ##
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (3, 5, 3, 'GEN101', 1);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (85, 105, 1, 'GEN101', 2);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (75, 85, 2, 'GEN101', 2);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (90, 200, 3, 'GEN101', 3);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (85, 120, 1, 'GEN101', 4);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (75, 85, 2, 'GEN101', 4);
-- ## Cours 2 ##
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (8, 10, 4, 'GIF242', 5);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (55, 60, 5, 'GIF242', 5);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (75, 75, 6, 'GIF242', 5);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (12, 20, 4, 'GIF242', 6);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (48, 50, 5, 'GIF242', 6);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (75, 85, 6, 'GIF242', 6);
-- ## Cours 3 ##
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (40, 50, 7, 'GIN120', 7);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (213, 250, 8, 'GIN120', 7);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (84, 100, 7, 'GIN120', 8);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (191, 200, 8, 'GIN120', 8);

-- Insertion dans la table ETUDIANT_EVALUATION
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (1, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (2, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (3, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (4, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (5, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (6, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (7, 'dalv1001');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (8, 'dalv1001');
