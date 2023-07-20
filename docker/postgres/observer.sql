DROP TRIGGER IF EXISTS trig_update_views_etudiantcours ON ETUDIANTCOURS;
DROP TRIGGER IF EXISTS trig_update_views_etudiant ON ETUDIANT;
DROP TRIGGER IF EXISTS trig_update_views_cours ON COURS;
DROP TRIGGER IF EXISTS trig_update_views_evaluation ON EVALUATION;
DROP TRIGGER IF EXISTS trig_update_views_competence ON COMPETENCE;
DROP TRIGGER IF EXISTS trig_update_views_competencepond ON COMPETENCEPOND;
DROP TRIGGER IF EXISTS trig_update_views_evaluationcompetence ON EVALUATIONCOMPETENCE;


CREATE OR REPLACE FUNCTION update_views()
    RETURNS TRIGGER AS
$$
BEGIN
    -- Update vue_notes_etudiant_trimestre
    CREATE OR REPLACE VIEW vue_notes_etudiant_trimestre AS
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
        ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / NULLIF(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN CP.Ponderation_competence ELSE 0 END), 0)) * 100) AS Total,
        ROUND(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END)::NUMERIC, 1) AS Totalnotepond,
        ROUND(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN CP.ponderation_competence ELSE 0 END)) AS TotalPond
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

    -- Update vue_note_total
    CREATE OR REPLACE VIEW vue_note_total AS
    SELECT
        E.cip,
        C.id_trimestre,
        C.Sigle,
        ROUND((SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END) / NULLIF(SUM(EC.Ponderation_competence), 0)) * 100) AS Note_Total,
        ROUND(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN EC.Resultat ELSE 0 END)) AS Note_pondTotal,
        ROUND(SUM(CASE WHEN Co.nom_comp IN ('Comp1', 'Comp2', 'Comp3') THEN CP.ponderation_competence ELSE 0 END)) AS pondCours
    FROM
        ETUDIANT E
            JOIN ETUDIANTCOURS ECrs ON E.Cip = ECrs.Cip
            JOIN COURS C ON ECrs.Sigle = C.Sigle AND ECrs.Id_trimestre = C.Id_trimestre
            JOIN EVALUATION Ev ON C.Sigle = Ev.Sigle AND C.Id_trimestre = Ev.Id_trimestre
            JOIN COMPETENCE Co ON C.Sigle = Co.Sigle AND C.Id_trimestre = Co.Id_trimestre
            LEFT JOIN COMPETENCEPOND CP ON Ev.Id_evaluation = CP.Id_evaluation AND Ev.Sigle = CP.Sigle AND Ev.Id_trimestre = CP.Id_trimestre AND Co.nom_comp = CP.nom_comp
            LEFT JOIN EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation AND Ev.Sigle = EC.Sigle AND Ev.Id_trimestre = EC.Id_trimestre AND E.Cip = EC.Cip AND Co.nom_comp = EC.nom_comp
    GROUP BY
        E.Cip, C.id_trimestre, C.Sigle;

    -- Update vue_cote_z_cours
    CREATE OR REPLACE VIEW vue_cote_z_cours AS
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

    -- Update vue_cote_z_trimestre
    CREATE OR REPLACE VIEW vue_cote_z_trimestre AS
    SELECT
        VCZC.cip,
        VCZC.id_trimestre,
        ROUND(AVG(VCZC.cote_z_chiffre), 2) AS cote_z_trimestre
    FROM
        vue_cote_z_cours VCZC
    GROUP BY
        VCZC.cip,
        VCZC.id_trimestre;

    -- Update vue_cote_z_tot
    CREATE OR REPLACE VIEW vue_cote_z_tot AS
    SELECT
        VCZT.cip,
        ROUND(AVG(VCZT.cote_z_trimestre), 2) AS cote_z_total
    FROM
        vue_cote_z_trimestre VCZT
    GROUP BY
        VCZT.cip;

    -- Update vue_notes_totales_competence_cours
    CREATE OR REPLACE VIEW vue_notes_totales_competence_cours AS
    SELECT
        cip,
        Id_trimestre,
        Sigle,
        Nom_cours,
        Round(SUM(Comp1)) AS TotalNotes_Comp1,
        Round(SUM(Ponderation_Comp1)) AS Total_Ponderation_Comp1,
        Round(SUM(Comp2)) AS TotalNotes_Comp2,
        Round(SUM(Ponderation_Comp2)) AS Total_Ponderation_Comp2,
        Round(SUM(Comp3)) AS TotalNotes_Comp3,
        Round(SUM(Ponderation_Comp3)) AS Total_Ponderation_Comp3
    FROM
        vue_notes_etudiant_trimestre
    GROUP BY
        cip, Sigle, Id_trimestre, Nom_cours
    ORDER BY
        cip, Sigle, Id_trimestre;

    -- Update vue_moyenne_ecart_eval
    CREATE OR REPLACE VIEW vue_moyenne_ecart_eval AS
    SELECT
        VNET.Id_trimestre,
        VNET.Sigle,
        VNET.Nom_evaluation,
        ROUND(AVG(VNET.Comp1)) AS MoyComp1,
        ROUND(AVG(VNET.Comp2)) AS MoyComp2,
        ROUND(AVG(VNET.Comp3)) AS MoyComp3,
        ROUND(AVG(VNET.Total)) AS Moyenne_Total,
        ROUND(stddev(VNET.Comp1)) AS EcartComp1,
        ROUND(stddev(VNET.Comp2)) AS EcartComp2,
        ROUND(stddev(VNET.Comp3)) AS EcartComp3,
        ROUND(stddev(VNET.Total)) AS Ecart_total
    FROM
        vue_notes_etudiant_trimestre VNET
    GROUP BY
        VNET.Id_trimestre, VNET.Sigle, VNET.Nom_evaluation;

    -- Update vue_moyenne_ecart_cours
    CREATE OR REPLACE VIEW vue_moyenne_ecart_cours AS
    SELECT
        VNT.Id_trimestre,
        VNT.Sigle,
        ROUND(AVG(VNT.note_total)) AS MoyNoteTotal,
        ROUND(AVG(vntcc.TotalNotes_Comp1)) AS MoyComp1Total,
        ROUND(AVG(vntcc.TotalNotes_Comp2)) AS MoyComp2Total,
        ROUND(AVG(vntcc.TotalNotes_Comp3)) AS MoyComp3Total,
        ROUND(stddev(vntcc.TotalNotes_Comp1)) EcartComp1Total,
        ROUND(stddev(vntcc.TotalNotes_Comp2)) EcartComp2Total,
        ROUND(stddev(vntcc.TotalNotes_Comp3)) EcartComp3Total,
        ROUND(stddev(VNT.note_total)) AS EcartNoteTotal
    FROM
        vue_note_total VNT
            JOIN vue_notes_totales_competence_cours vntcc ON
                    VNT.sigle = vntcc.sigle AND
                    VNT.id_trimestre = vntcc.id_trimestre
    GROUP BY
        VNT.Id_trimestre, VNT.Sigle;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trig_update_views_etudiantcours
    AFTER INSERT OR UPDATE OR DELETE ON ETUDIANTCOURS
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_etudiant
    AFTER INSERT OR UPDATE OR DELETE ON ETUDIANT
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_cours
    AFTER INSERT OR UPDATE OR DELETE ON COURS
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_evaluation
    AFTER INSERT OR UPDATE OR DELETE ON EVALUATION
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_competence
    AFTER INSERT OR UPDATE OR DELETE ON COMPETENCE
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_competencepond
    AFTER INSERT OR UPDATE OR DELETE ON COMPETENCEPOND
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

CREATE TRIGGER trig_update_views_evaluationcompetence
    AFTER INSERT OR UPDATE OR DELETE ON EVALUATIONCOMPETENCE
    FOR EACH STATEMENT
EXECUTE FUNCTION update_views();

