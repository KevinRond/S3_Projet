CREATE OR REPLACE FUNCTION obtenir_notes_etudiant(cip_param VARCHAR, trimestre_param VARCHAR)
    RETURNS TABLE (
                      sigle VARCHAR,
                      nom_cours VARCHAR,
                      nom_evaluation VARCHAR,
                      comp1 FLOAT,
                      ponderation_comp1 FLOAT,
                      comp2 FLOAT,
                      ponderation_comp2 FLOAT,
                      comp3 FLOAT,
                      ponderation_comp3 FLOAT,
                      total FLOAT
                  )
AS $$
BEGIN
    RETURN QUERY
        SELECT
            vne.sigle,
            vne.nom_cours,
            vne.nom_evaluation,
            vne.comp1,
            vne.ponderation_comp1,
            vne.comp2,
            vne.ponderation_comp2,
            vne.comp3,
            vne.ponderation_comp3,
            vne.total
        FROM
            vue_notes_etudiant_trimestre vne
        WHERE
                vne.cip = cip_param AND
                vne.id_trimestre = trimestre_param;
END;
$$ LANGUAGE plpgsql;
