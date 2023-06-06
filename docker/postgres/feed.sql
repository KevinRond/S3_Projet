-- Insertion dans la table DEPARTEMENT
INSERT INTO DEPARTEMENT(Id_departement, Nom_departement) VALUES (1, 'Sciences de l''informatique');

-- Insertion dans la table COURS
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('INF1001', 'Programmation I');
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('INF1002', 'Programmation II');
INSERT INTO COURS(Sigle, Nom_cours) VALUES ('MAT1010', 'Mathématiques pour informatique');

-- Insertion dans la table EVALUATION
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (1, 'Examen mi-semestre', 0.4);
INSERT INTO EVALUATION(Id_evaluation, Nom_evaluation, Ponderation) VALUES (2, 'Examen final', 0.6);

-- Insertion dans la table PROGRAMME
INSERT INTO PROGRAMME(Id_programme, Nom_programme, Id_departement) VALUES (1, 'Baccalauréat en informatique', 1);

-- Insertion dans la table COMPETENCE
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (1, 'Comp1', 'INF1001');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (2, 'Comp2', 'INF1002');
INSERT INTO COMPETENCE(Id_competence, nom_comp, Sigle) VALUES (3, 'Comp3', 'MAT1010');

-- Insertion dans la table EVALUATION_COMPETENCE
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (85, 0.5, 1, 'INF1001', 1);
INSERT INTO EVALUATION_COMPETENCE(Resultat, Ponderation_competence, Id_competence, Sigle, Id_evaluation) VALUES (75, 0.5, 2, 'INF1002', 2);

-- Insertion dans la table PROGRAMME_COURS
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'INF1001');
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'INF1002');
INSERT INTO PROGRAMME_COURS(Id_programme, Sigle) VALUES (1, 'MAT1010');

-- Insertion dans la table ETUDIANT
INSERT INTO ETUDIANT(Cip, Prenom, Nom_famille, Id_programme) VALUES ('CIP12345678', 'Jean', 'Doe', 1);

-- Insertion dans la table ETUDIANT_COURS
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('CIP12345678', 'INF1001');
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('CIP12345678', 'INF1002');
INSERT INTO ETUDIANT_COURS(Cip, Sigle) VALUES ('CIP12345678', 'MAT1010');

-- Insertion dans la table ETUDIANT_EVALUATION
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (1, 'CIP12345678');
INSERT INTO ETUDIANT_EVALUATION(Id_evaluation, Cip) VALUES (2, 'CIP12345678');
