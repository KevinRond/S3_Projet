DROP VIEW IF EXISTS vue_notes_etudiant_trimestre CASCADE;
DROP VIEW IF EXISTS vue_note_total cascade ;
DROP VIEW IF EXISTS vue_cote_z_cours cascade ;
DROP VIEW IF EXISTS vue_cote_z_trimestre cascade ;
DROP VIEW IF EXISTS vue_cote_z_tot cascade ;

CREATE VIEW vue_notes_etudiant_trimestre AS
SELECT
    E.Cip,
    C.Id_trimestre,
    C.Sigle,
    C.Nom_cours,
    Ev.Nom_evaluation,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN EC.Resultat END) AS Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN CP.Ponderation_competence END) AS Ponderation_Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN EC.Resultat END) AS Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN CP.Ponderation_competence END) AS Ponderation_Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN EC.Resultat END) AS Comp3,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN CP.Ponderation_competence END) AS Ponderation_Comp3,
    ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / NULLIF(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN CP.Ponderation_competence ELSE 0 END), 0)) * 100) AS Total
FROM
    ETUDIANT E
        JOIN ETUDIANTCOURS ECrs ON E.Cip = ECrs.Cip
        JOIN COURS C ON ECrs.Sigle = C.Sigle AND ECrs.Id_trimestre = C.Id_trimestre
        JOIN EVALUATION Ev ON C.Sigle = Ev.Sigle AND C.Id_trimestre = Ev.Id_trimestre
        JOIN COMPETENCE Co ON C.Sigle = Co.Sigle AND C.Id_trimestre = Co.Id_trimestre
        LEFT JOIN COMPETENCEPOND CP ON Ev.Id_evaluation = CP.Id_evaluation AND Ev.Sigle = CP.Sigle AND Ev.Id_trimestre = CP.Id_trimestre AND Co.nom_comp = CP.nom_comp
        LEFT JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation AND Ev.Sigle = EC.Sigle AND Ev.Id_trimestre = EC.Id_trimestre AND E.Cip = EC.Cip AND Co.nom_comp = EC.nom_comp
GROUP BY
    E.Cip, C.Id_trimestre, C.Sigle, C.Nom_cours, Ev.Nom_evaluation
ORDER BY
    cip ASC, id_trimestre ASC;

CREATE VIEW vue_note_total AS
SELECT
    E.cip,
    C.id_trimestre,
    C.Sigle,
    ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / NULLIF(SUM(EC.Ponderation_competence), 0)) * 100) AS Note_Total
FROM
    ETUDIANT E
        JOIN ETUDIANTCOURS ECrs ON E.Cip = ECrs.Cip
        JOIN COURS C ON ECrs.Sigle = C.Sigle AND ECrs.Id_trimestre = C.Id_trimestre
        JOIN EVALUATION Ev ON C.Sigle = Ev.Sigle AND C.Id_trimestre = Ev.Id_trimestre
        JOIN COMPETENCE Co ON C.Sigle = Co.Sigle AND C.Id_trimestre = Co.Id_trimestre
        LEFT JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation AND Ev.Sigle = EC.Sigle AND Ev.Id_trimestre = EC.Id_trimestre AND E.Cip = EC.Cip AND Co.nom_comp = EC.nom_comp
GROUP BY
    E.Cip, C.id_trimestre, C.Sigle;

CREATE VIEW vue_cote_z_cours AS
SELECT
    VNT.cip,
    VNT.id_trimestre,
    VNT.sigle,
    VNT.note_total,

    CASE
        WHEN Note_Total IS NULL THEN null
        WHEN Note_Total >= 85 THEN 'A+'
        WHEN Note_Total >= 81 AND Note_Total <= 84 THEN 'A'
        WHEN Note_Total >= 78 AND Note_Total <= 80 THEN 'A-'
        WHEN Note_Total >= 75 AND Note_Total <= 77 THEN 'B+'
        WHEN Note_Total >= 71 AND Note_Total <= 74 THEN 'B'
        WHEN Note_Total >= 68 AND Note_Total <= 70 THEN 'B-'
        WHEN Note_Total >= 64 AND Note_Total <= 67 THEN 'C+'
        WHEN Note_Total >= 60 AND Note_Total <= 63 THEN 'C'
        WHEN Note_Total >= 57 AND Note_Total <= 59 THEN 'C-'
        WHEN Note_Total >= 53 AND Note_Total <= 56 THEN 'D+'
        WHEN Note_Total >= 50 AND Note_Total <= 52 THEN 'D'
        ELSE 'E'
        END AS cote_z_lettre,

    CASE
        WHEN Note_Total IS NULL THEN null
        WHEN Note_Total >= 85 THEN 4.3
        WHEN Note_Total >= 81 AND Note_Total <= 84 THEN 4.0
        WHEN Note_Total >= 78 AND Note_Total <= 80 THEN 3.7
        WHEN Note_Total >= 75 AND Note_Total <= 77 THEN 3.3
        WHEN Note_Total >= 71 AND Note_Total <= 74 THEN 3.0
        WHEN Note_Total >= 68 AND Note_Total <= 70 THEN 2.7
        WHEN Note_Total >= 64 AND Note_Total <= 67 THEN 2.3
        WHEN Note_Total >= 60 AND Note_Total <= 63 THEN 2.0
        WHEN Note_Total >= 57 AND Note_Total <= 59 THEN 1.7
        WHEN Note_Total >= 53 AND Note_Total <= 56 THEN 1.3
        WHEN Note_Total >= 50 AND Note_Total <= 52 THEN 1.0
        ELSE 0
        END AS cote_z_chiffre
FROM vue_note_total VNT;


CREATE VIEW vue_cote_z_trimestre AS
SELECT
    VCZC.cip,
    VCZC.id_trimestre,
    ROUND(AVG(VCZC.cote_z_chiffre), 2) AS cote_z_trimestre


FROM
    vue_cote_z_cours VCZC
GROUP BY
    VCZC.cip,
    VCZC.id_trimestre;

CREATE VIEW vue_cote_z_tot AS
SELECT
    VCZT.cip,
    ROUND(AVG(VCZT.cote_z_trimestre), 2) AS cote_z_total


FROM
    vue_cote_z_trimestre VCZT

GROUP BY
    VCZT.cip;

DROP VIEW IF EXISTS vue_notes_totales_competence_cours CASCADE;

CREATE VIEW vue_notes_totales_competence_cours AS
SELECT
    cip,
    Id_trimestre,
    Sigle,
    Nom_cours,
    SUM(Comp1) AS TotalNotes_Comp1,
    SUM(Ponderation_Comp1) AS Total_Ponderation_Comp1,
    SUM(Comp2) AS TotalNotes_Comp2,
    SUM(Ponderation_Comp2) AS Total_Ponderation_Comp2,
    SUM(Comp3) AS TotalNotes_Comp3,
    SUM(Ponderation_Comp3) AS Total_Ponderation_Comp3
FROM
    vue_notes_etudiant_trimestre
GROUP BY
    cip, Sigle, Id_trimestre, Nom_cours
ORDER BY
    cip, Sigle, Id_trimestre;