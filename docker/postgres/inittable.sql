DROP SCHEMA IF EXISTS PROJET cascade;
CREATE schema PROJET;
set search_path = PROJET, pg_catalog;

CREATE TABLE DEPARTEMENT
(
    Id_departement INT NOT NULL,
    Nom_departement VARCHAR(128) NOT NULL,
    PRIMARY KEY (Id_departement)
);

CREATE TABLE TRIMESTRE
(
    Id_trimestre  VARCHAR(16) NOT NULL,
    PRIMARY KEY (Id_trimestre)
);

CREATE TABLE COURS
(
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    Nom_cours VARCHAR(256) NOT NULL,
    PRIMARY KEY (Sigle, Id_trimestre),
    FOREIGN KEY (Id_trimestre) REFERENCES TRIMESTRE(Id_trimestre)
);

CREATE TABLE EVALUATION
(
    Id_evaluation INT NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    Nom_evaluation VARCHAR(64) NOT NULL,
    Ponderation FLOAT NOT NULL,
    PRIMARY KEY (Id_evaluation, Sigle, Id_trimestre)
);

CREATE TABLE PROGRAMME
(
    Id_programme INT NOT NULL,
    Nom_programme VARCHAR(128) NOT NULL,
    Id_departement INT NOT NULL,
    PRIMARY KEY (Id_programme),
    FOREIGN KEY (Id_departement) REFERENCES DEPARTEMENT(Id_departement)
);

CREATE TABLE COMPETENCE
(
    nom_comp VARCHAR(64) NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    PRIMARY KEY (nom_comp, Sigle, Id_trimestre),
    FOREIGN KEY (Sigle, Id_trimestre) REFERENCES COURS(Sigle, Id_trimestre)
);
CREATE TABLE ETUDIANT
(
    Cip VARCHAR(16) NOT NULL,
    Prenom VARCHAR(32) NOT NULL,
    Nom_famille VARCHAR(32) NOT NULL,
    Id_programme INT NOT NULL,
    PRIMARY KEY (Cip),
    FOREIGN KEY (Id_programme) REFERENCES PROGRAMME(Id_programme)
);


CREATE TABLE EVALUATIONCOMPETENCE
(
    Resultat FLOAT NOT NULL,
    Ponderation_competence FLOAT NOT NULL,
    nom_comp VARCHAR(64) NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_evaluation INT NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    Cip VARCHAR(16) NOT NULL,
    PRIMARY KEY (nom_comp, Sigle, Id_evaluation, Id_trimestre, Cip),
    FOREIGN KEY (nom_comp, Sigle, Id_trimestre) REFERENCES COMPETENCE(nom_comp, Sigle, Id_trimestre),
    FOREIGN KEY (Id_evaluation, Sigle, Id_trimestre) REFERENCES EVALUATION(Id_evaluation, Sigle, Id_trimestre),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip)
);


CREATE TABLE PROGRAMMECOURS
(
    Id_programme INT NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    PRIMARY KEY (Id_programme, Sigle, Id_trimestre),
    FOREIGN KEY (Id_programme) REFERENCES PROGRAMME(Id_programme),
    FOREIGN KEY (Sigle, Id_trimestre) REFERENCES COURS(Sigle, Id_trimestre)
);



CREATE TABLE ETUDIANTCOURS
(
    Cip VARCHAR(16) NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    PRIMARY KEY (Cip, Sigle, Id_trimestre),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip),
    FOREIGN KEY (Sigle, Id_trimestre) REFERENCES COURS(Sigle, Id_trimestre)
);

CREATE TABLE ETUDIANTEVALUATION
(
    Id_evaluation INT NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_trimestre VARCHAR(16) NOT NULL,
    Cip VARCHAR(64) NOT NULL,
    PRIMARY KEY (Id_evaluation, Sigle, Id_trimestre, Cip),
    FOREIGN KEY (Id_evaluation, Sigle, Id_trimestre) REFERENCES EVALUATION(Id_evaluation, Sigle, Id_trimestre),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip)
);