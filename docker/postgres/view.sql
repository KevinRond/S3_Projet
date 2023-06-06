CREATE VIEW notes_etudiant AS
SELECT
    E.Cip,
    E.Prenom,
    E.Nom_famille,
    C.Nom_cours,
    Ev.Nom_evaluation,
    Co.nom_comp,
    EC.Ponderation_competence,
    EC.Resultat
FROM
    ETUDIANT E
        JOIN
    ETUDIANTEVALUATION EE ON E.Cip = EE.Cip
        JOIN
    EVALUATION Ev ON EE.Id_evaluation = Ev.Id_evaluation
        JOIN
    EVALUATIONCOMPETENCE EC ON Ev.Id_evaluation = EC.Id_evaluation
        JOIN
    COMPETENCE Co ON EC.Id_competence = Co.Id_competence AND EC.Sigle = Co.Sigle
        JOIN
    COURS C ON Co.Sigle = C.Sigle
WHERE
        E.Cip = 'CIP12345678';
