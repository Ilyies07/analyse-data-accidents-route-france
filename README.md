#  Analyse des accidents de la route en France

##  Objectif

Ce projet a pour but de nettoyer, structurer et analyser la base de données publique des accidents corporels de la circulation en France.

Les données proviennent de data.gouv.fr et présentent de nombreuses problématiques :
- valeurs manquantes
- incohérences
- données réparties sur plusieurs fichiers

---

##  Données utilisées

- caracteristiques.csv
- lieux.csv
- vehicules.csv
- usagers.csv

---

##  Étape 1 : Nettoyage des données

- Suppression des doublons
- Gestion des valeurs manquantes
- Conversion des types (dates, entiers)
- Traduction des codes en valeurs compréhensibles

---

## 🔗 Étape 2 : Fusion des données

Les fichiers ont été fusionnés à l’aide de la clé `Num_Acc`.

---

## 🗄️ Étape 3 : Modélisation de la base

Création d’une base relationnelle avec les tables suivantes :

- Accident
- Lieu
- Vehicule
- Usager

### Relations :

- Un accident peut impliquer plusieurs véhicules
- Un véhicule peut concerner plusieurs usagers

---

## 📊 Étape 4 : Analyse des données

Analyses à réalisées :

- Répartition des accidents par heure
- Types de véhicules impliqués
- Gravité des accidents
- Analyse géographique

---

##  Technologies à utilisées

- Python
- pandas
- matplotlib
- SQLite / PostgreSQL (

---
