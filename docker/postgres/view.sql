DROP VIEW IF EXISTS vue_notes_etudiant_trimestre CASCADE;

CREATE VIEW vue_notes_etudiant_trimestre AS
SELECT
    E.cip,
    C.id_trimestre,
    C.Sigle,
    C.Nom_cours,
    Ev.Nom_evaluation,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN EC.Resultat END) AS Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp1' THEN EC.Ponderation_competence END) AS Ponderation_Comp1,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN EC.Resultat END) AS Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp2' THEN EC.Ponderation_competence END) AS Ponderation_Comp2,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN EC.Resultat END) AS Comp3,
    MAX(CASE WHEN Co.nom_comp = 'Comp3' THEN EC.Ponderation_competence END) AS Ponderation_Comp3,
    ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / NULLIF(SUM(EC.Ponderation_competence), 0)) * 100) AS Total
FROM
    ETUDIANT E
        JOIN evaluationcompetence EE ON E.Cip = EE.Cip
        JOIN EVALUATION Ev ON EE.Id_evaluation = Ev.Id_evaluation AND EE.Sigle = Ev.Sigle AND EE.Id_trimestre = Ev.Id_trimestre
        JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation AND Ev.Sigle = EC.Sigle AND Ev.Id_trimestre = EC.Id_trimestre AND E.cip = EC.cip
        JOIN COMPETENCE Co ON EC.id_trimestre = Co.id_trimestre AND EC.Sigle = Co.Sigle AND Co.nom_comp = EC.nom_comp
        JOIN COURS C ON Co.Sigle = C.Sigle AND Co.Id_trimestre = C.Id_trimestre
GROUP BY
    E.Cip, C.id_trimestre, C.Sigle, C.Nom_cours, Ev.Nom_evaluation
ORDER BY
    E.cip ASC, C.id_trimestre ASC;