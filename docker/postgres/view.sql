DROP VIEW IF EXISTS vue_notes_etudiant_trimestre CASCADE;

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
    Cip ASC, Id_trimestre ASC;
