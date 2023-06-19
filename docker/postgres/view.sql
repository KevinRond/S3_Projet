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
        JOIN ETUDIANTEVALUATION EE ON E.Cip = EE.Cip
        JOIN EVALUATION Ev ON EE.Id_evaluation = Ev.Id_evaluation
        JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation
        JOIN COMPETENCE Co ON EC.Id_competence = Co.Id_competence AND EC.Sigle = Co.Sigle
        JOIN COURS C ON Co.Sigle = C.Sigle
GROUP BY
    E.Cip, C.id_trimestre, C.Sigle, C.Nom_cours, Ev.Nom_evaluation
ORDER BY
    E.cip ASC, C.id_trimestre ASC;

DROP VIEW IF EXISTS vue_total_notes_competences_par_cours_depuis_premiere_vue CASCADE;

DROP VIEW IF EXISTS vue_total_notes_competences_par_cours_depuis_premiere_vue CASCADE;

-- CREATE VIEW vue_total_notes_competences_par_cours_depuis_premiere_vue AS
-- SELECT
--     Sigle,
--     Id_trimestre,
--     Nom_cours,
--     CASE
--         WHEN Comp1 IS NOT NULL THEN 'Comp1'
--         WHEN Comp2 IS NOT NULL THEN 'Comp2'
--         WHEN Comp3 IS NOT NULL THEN 'Comp3'
--         END AS Competence,
--     ROUND(CAST(SUM(
--                        CASE
--                            WHEN Comp1 IS NOT NULL THEN Comp1 * Ponderation_Comp1
--                            WHEN Comp2 IS NOT NULL THEN Comp2 * Ponderation_Comp2
--                            WHEN Comp3 IS NOT NULL THEN Comp3 * Ponderation_Comp3
--                            END
--                    ) / NULLIF(SUM(
--                                       CASE
--                                           WHEN Comp1 IS NOT NULL THEN Ponderation_Comp1
--                                           WHEN Comp2 IS NOT NULL THEN Ponderation_Comp2
--                                           WHEN Comp3 IS NOT NULL THEN Ponderation_Comp3
--                                           END
--                                   ), 0) * 100 AS NUMERIC), 2) AS Total_Normalise
-- FROM
--     vue_notes_etudiant_trimestre
-- GROUP BY
--     Sigle, Id_trimestre, Nom_cours, Competence
-- ORDER BY
--     Sigle ASC, Id_trimestre ASC, Competence ASC;

DROP VIEW IF EXISTS vue_notes_normalisees_par_competence CASCADE;

DROP VIEW IF EXISTS vue_notes_normalisees_par_competence CASCADE;

DROP VIEW IF EXISTS vue_notes_normalisees_par_competence CASCADE;

-- CREATE VIEW vue_notes_normalisees_par_competence AS
-- SELECT
--     cip,
--     Id_trimestre,
--     Sigle,
--     Nom_cours,
--     CASE
--         WHEN Comp1 IS NOT NULL THEN 'Comp1'
--         WHEN Comp2 IS NOT NULL THEN 'Comp2'
--         WHEN Comp3 IS NOT NULL THEN 'Comp3'
--         END AS Competence,
--     (SUM(
--              CASE
--                  WHEN Comp1 IS NOT NULL THEN Comp1
--                  WHEN Comp2 IS NOT NULL THEN Comp2
--                  WHEN Comp3 IS NOT NULL THEN Comp3
--                  END
--          ) / NULLIF(SUM(
--                             CASE
--                                 WHEN Comp1 IS NOT NULL THEN Ponderation_Comp1
--                                 WHEN Comp2 IS NOT NULL THEN Ponderation_Comp2
--                                 WHEN Comp3 IS NOT NULL THEN Ponderation_Comp3
--                                 END
--                         ), 0)) * 100 AS Note_Normalisee
-- FROM
--     vue_notes_etudiant_trimestre
-- GROUP BY
--     cip, Sigle, Id_trimestre, Nom_cours, Competence
-- ORDER BY
--     cip, Sigle, Id_trimestre, Competence;

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
    SUM(Ponderation_Comp3) AS Total_Ponderation_Comp3,
    ROUND((SUM(Comp1) / NULLIF(SUM(Ponderation_Comp1), 0)) * 100) AS total_comp1,
    ROUND((SUM(Comp2) / NULLIF(SUM(Ponderation_Comp2), 0)) * 100) AS total_comp2,
    ROUND((SUM(Comp3) / NULLIF(SUM(Ponderation_Comp3), 0)) * 100) AS total_comp3
FROM
    vue_notes_etudiant_trimestre
GROUP BY
    cip, Sigle, Id_trimestre, Nom_cours
ORDER BY
    cip, Sigle, Id_trimestre;

