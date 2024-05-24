# Test technique Scalingo

# Comment lancer le projet

## Avec docker

### Requis :
- Docker

Pour build et lancer le projet :
```shell
docker compose up --build -d
```

Pour voir les logs de l'application :
```shell
docker compose logs app
```

Pour voir les logs de la base de données :
```shell
docker compose logs database
```

# Reflexion et choix technique

Ce README contiendra tout au long de la réalisation de ce projet le suivi de mes choix et reflexions technique.

## Initialisation de l'API

Le projet à été initialisé en suivant les choix suivants:
- Dockerisation, pour simplifier la création du projet, mais aussi son développement et son déploiement grace à la contenerisation.
- Utilisation de Rspec/ShouldaMatchers/FactoryBot, qui sont le plus utilisé, maintenu et documenté pour tester et mock de la donnée en Rails.
- Utilisation de Rubocop, qui est le linter le plus utilisé en Ruby.
- Utilisation de Annotate, pour maintenir les documentations des models les plus détaillés possible.

## Création du model Hive

Les deux champs requis impérativement pour ce test technique sont le nom et le poids.
- Le nom devait être limité à 6 caractères maximum et testé
- Le poids était libre dans son interprétation.

Les choix qui ont été fait sont : 
- Validation du nom pour sa longeur, mais aussi sa présence.
- Utilisation d'un float pour le poids, afin de l'afficher en kg.
- Validation de présence et de longeur testé avec Rspec et Shoulda-Matchers.

## Création du controller Hives

Les routes requises étaient index, show et create.
Pour le rendu j'ai choisi d'utiliser jbuilder, afin de garder ma partie rendu séparé de ma partie logique.
Toutes les routes ont un test de leur controller.
