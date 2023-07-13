-- Création de la fonction pour générer les notes aléatoires pondérées
CREATE OR REPLACE FUNCTION insert_random_note()
    RETURNS TRIGGER AS $$
DECLARE
    random_note FLOAT;
BEGIN
    -- Vérifier si l'étudiant est ronk2602
    IF NEW.cip = 'ronk2602' THEN
        -- Récupérer la pondération de compétence correspondante
        SELECT Ponderation_competence
        INTO random_note
        FROM COMPETENCEPOND
        WHERE nom_comp = NEW.nom_comp
          AND Sigle = NEW.Sigle
          AND Id_evaluation = NEW.Id_evaluation
          AND id_trimestre = NEW.id_trimestre;

        -- Générer une note aléatoire pondérée entre 0 et la pondération de compétence
        random_note := RANDOM() * random_note;

        -- Insérer une nouvelle ligne avec la note aléatoire
        INSERT INTO EVALUATIONCOMPETENCE(Resultat, Ponderation_competence, nom_comp, Sigle, Id_evaluation, id_trimestre, cip)
        VALUES (random_note, NEW.Ponderation_competence, NEW.nom_comp, NEW.Sigle, NEW.Id_evaluation, NEW.id_trimestre, NEW.cip);

        -- Indiquer que l'événement d'insertion a été traité
        RETURN NULL;
    END IF;

    -- Renvoyer la nouvelle ligne d'insertion telle quelle
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- Création du déclencheur sur la table EVALUATIONCOMPETENCE
CREATE TRIGGER insert_random_note_trigger
    INSTEAD OF INSERT ON EVALUATIONCOMPETENCE
    FOR EACH ROW
EXECUTE FUNCTION insert_random_note();
