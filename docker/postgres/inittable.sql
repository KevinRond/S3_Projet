CREATE TABLE DEPARTEMENT
(
    Id_departement INT NOT NULL,
    Nom_departement VARCHAR(128) NOT NULL,
    PRIMARY KEY (Id_departement)
);

CREATE TABLE COURS
(
    Sigle VARCHAR(64) NOT NULL,
    Nom_cours VARCHAR(256) NOT NULL,
    PRIMARY KEY (Sigle)
);

CREATE TABLE EVALUATION
(
    Id_evaluation INT NOT NULL,
    Nom_evaluation VARCHAR(64) NOT NULL,
    Ponderation FLOAT NOT NULL,
    PRIMARY KEY (Id_evaluation)
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
    Id_competence INT NOT NULL,
    nom_comp VARCHAR(8) NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    PRIMARY KEY (Id_competence, Sigle),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
);

CREATE TABLE EVALUATION_COMPETENCE
(
    Resultat FLOAT NOT NULL,
    Ponderation_competence FLOAT NOT NULL,
    Id_competence INT NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    Id_evaluation INT NOT NULL,
    PRIMARY KEY (Id_competence, Sigle, Id_evaluation),
    FOREIGN KEY (Id_competence, Sigle) REFERENCES COMPETENCE(Id_competence, Sigle),
    FOREIGN KEY (Id_evaluation) REFERENCES EVALUATION(Id_evaluation)
);

CREATE TABLE PROGRAMME_COURS
(
    Id_programme INT NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    PRIMARY KEY (Id_programme, Sigle),
    FOREIGN KEY (Id_programme) REFERENCES PROGRAMME(Id_programme),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
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

CREATE TABLE ETUDIANT_COURS
(
    Cip VARCHAR(16) NOT NULL,
    Sigle VARCHAR(64) NOT NULL,
    PRIMARY KEY (Cip, Sigle),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
);

CREATE TABLE ETUDIANT_EVALUATION
(
    Id_evaluation INT NOT NULL,
    Cip VARCHAR(64) NOT NULL,
    PRIMARY KEY (Id_evaluation, Cip),
    FOREIGN KEY (Id_evaluation) REFERENCES EVALUATION(Id_evaluation),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip)
);