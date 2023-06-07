DROP VIEW IF EXISTS vue_notes_etudiant_trimestre CASCADE;

CREATE VIEW vue_notes_etudiant_trimestre AS
SELECT
    E.cip,
    C.id_trimestre,
    C.Sigle,
    C.Nom_cours,
    Ev.Nom_evaluation,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN EC.Resultat ELSE NULL END) AS Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN EC.Ponderation_competence ELSE NULL END) AS Ponderation_Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN EC.Resultat ELSE NULL END) AS Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN EC.Ponderation_competence ELSE NULL END) AS Ponderation_Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN EC.Resultat ELSE NULL END) AS Comp3,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN EC.Ponderation_competence ELSE NULL END) AS Ponderation_Comp3,
    ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / SUM(EC.Ponderation_competence)) * 100) AS Total
FROM
    ETUDIANT E
        JOIN ETUDIANTEVALUATION EE ON E.Cip = EE.Cip
        JOIN EVALUATION Ev ON EE.Id_evaluation = Ev.Id_evaluation
        JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation
        JOIN COMPETENCE Co ON EC.Id_competence = Co.Id_competence AND EC.Sigle = Co.Sigle
        JOIN COURS C ON Co.Sigle = C.Sigle
GROUP BY
    E.Cip, C.id_trimestre,C.Sigle,C.Nom_cours, Ev.Nom_evaluation
ORDER BY
    E.cip ASC, C.id_trimestre ASC;
