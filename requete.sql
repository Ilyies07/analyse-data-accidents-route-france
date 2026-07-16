# Le nombre total d'accident dans la base

select count(*) from "Caracteristique" 

# Nombre total d'accident dans des routes a plus de 90 km/h

SELECT COUNT(*)
FROM "Caracteristique" AS caract
LEFT JOIN "Lieux" ON caract."Num_Acc" = "Lieux"."Num_Acc"
WHERE "Lieux".vma >= 90;

# affichage de tous les accidents qui ont eu lieux dans le departement 93

SELECT caract.*
FROM "Caracteristique" as caract
WHERE caract.dep = '93';

# Retourne tous les véhicules impliqués dans l’accident numéro 202400000002.

SELECT v.*
FROM "Vehicules" AS v
INNER JOIN "Caracteristique" AS c
    ON v."Num_Acc" = c."Num_Acc"
WHERE c."Num_Acc" = 202400000002;

# Trouver les accidents où au moins un usager a été blessé gravement.

select c."Num_Acc", u.id_usager, u.grav
from "Caracteristique" as c left join "Usagers" as u 
      ON c."Num_Acc" = u."Num_Acc"
where u.grav = 3;

# Nombre d'accident qui ont eu lieux dans une autoroute

SELECT count(*)
FROM "Caracteristique" as c inner join "Lieux" as l 
            ON c."Num_Acc" = l."Num_Acc"
WHERE l.catr = 1;

# Nombre de blesse ( mort, hospitalise, blessé leger) 

select count(*) as nb_blesse
from "Usagers" as u
where u.grav = 2 OR  u.grav = 3 OR  u.grav = 4;


# Vitesse maximale autorisé par type de route 

SELECT AVG(l.vma) AS max_vitesse, l.catr
FROM "Lieux" AS l
GROUP BY l.catr;

# Afficher le nombre d'accident par condition météo

select count(*) as nb_accidents, c.atm
from "Caracteristique" as c
GROUP BY c.atm;

# Donner le nombre moyen de véhicules par accident.

SELECT AVG(nb_vehicules) AS moyenne_vehicules
FROM (
    SELECT COUNT(*) AS nb_vehicules
    FROM "Vehicules"
    GROUP BY "Num_Acc"
) AS t;

# Trouver le maximum et le minimum de vma enregistrés dans la table Lieux.

SELECT MIN(l.vma) AS min_vitesse,
       MAX(l.vma) AS max_vitesse
FROM "Lieux" AS l;

# Lister les communes avec plus de 50 accidents.

select c.com, count(*) as nb_accidents
from "Caracteristique" as c
group by c.com
having count(*) > 50;

# Trouver les catégories de véhicules (catv) impliquées dans au moins 10 accidents.

# select varying.catv, count(*) AS nb_accidents
from "Caracteristique" AS c INNER JOIN "Vehicules" as v
      ON c."Num_Acc" = v."Num_Acc"
group by v.catv
having count(*) >= 10;

