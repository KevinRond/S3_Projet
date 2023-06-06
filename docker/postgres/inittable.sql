CREATE TABLE DEPARTEMENT
(
    Id_departement INT NOT NULL,
    Nom_departement INT NOT NULL,
    PRIMARY KEY (Id_departement)
);

CREATE TABLE COURS
(
    Sigle INT NOT NULL,
    Nom_cours INT NOT NULL,
    PRIMARY KEY (Sigle)
);

CREATE TABLE EVALUATION
(
    Id_evaluation INT NOT NULL,
    Nom_evaluation INT NOT NULL,
    Ponderation INT NOT NULL,
    Date INT NOT NULL,
    PRIMARY KEY (Id_evaluation)
);

CREATE TABLE PROGRAMME
(
    Id_programme INT NOT NULL,
    Nom_programme INT NOT NULL,
    Id_departement INT NOT NULL,
    PRIMARY KEY (Id_programme),
    FOREIGN KEY (Id_departement) REFERENCES DEPARTEMENT(Id_departement)
);

CREATE TABLE COMPETENCE
(
    Id_competence INT NOT NULL,
    nom_comp INT NOT NULL,
    Sigle INT NOT NULL,
    PRIMARY KEY (Id_competence, Sigle),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
);

CREATE TABLE evalue_par
(
    Resultat INT NOT NULL,
    Ponderation_competence INT NOT NULL,
    Id_competence INT NOT NULL,
    Sigle INT NOT NULL,
    Id_evaluation INT NOT NULL,
    PRIMARY KEY (Id_competence, Sigle, Id_evaluation),
    FOREIGN KEY (Id_competence, Sigle) REFERENCES COMPETENCE(Id_competence, Sigle),
    FOREIGN KEY (Id_evaluation) REFERENCES EVALUATION(Id_evaluation)
);

CREATE TABLE contient
(
    Id_programme INT NOT NULL,
    Sigle INT NOT NULL,
    PRIMARY KEY (Id_programme, Sigle),
    FOREIGN KEY (Id_programme) REFERENCES PROGRAMME(Id_programme),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
);

CREATE TABLE ETUDIANT
(
    Cip INT NOT NULL,
    Prenom INT NOT NULL,
    Nom_famille INT NOT NULL,
    Id_programme INT NOT NULL,
    PRIMARY KEY (Cip),
    FOREIGN KEY (Id_programme) REFERENCES PROGRAMME(Id_programme)
);

CREATE TABLE inscrit
(
    Cip INT NOT NULL,
    Sigle INT NOT NULL,
    PRIMARY KEY (Cip, Sigle),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip),
    FOREIGN KEY (Sigle) REFERENCES COURS(Sigle)
);

CREATE TABLE fait
(
    Id_evaluation INT NOT NULL,
    Cip INT NOT NULL,
    PRIMARY KEY (Id_evaluation, Cip),
    FOREIGN KEY (Id_evaluation) REFERENCES EVALUATION(Id_evaluation),
    FOREIGN KEY (Cip) REFERENCES ETUDIANT(Cip)
);