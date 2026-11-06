# EnigmaTech

## Présentation du projet

EnigmaTech est une application web développée dans le cadre d'un projet universitaire de deuxième année de MIAGE (L2 MIAGE) à l'Université de Toulouse.

L'objectif était de concevoir une plateforme de gestion et de supervision destinée aux entreprises spécialisées dans les escape games. L'application permet de centraliser la gestion des jeux, des salles, des dispositifs et des sessions de jeu depuis une interface web.

Le projet comprenait également une partie matérielle : des capteurs connectés installés dans les salles devaient transmettre des informations à l'application afin de permettre aux game masters de suivre le déroulement des sessions.

## État actuel du projet

Le projet est aujourd'hui conservé sous la forme d'une version locale de démonstration de l'application web.

Il est important de noter que la partie matérielle du projet n'est plus disponible. L'installation initiale reposait notamment sur un Raspberry Pi, un écran PiFace, Domoticz et différents capteurs et équipements Z-Wave. L'ensemble de ce matériel a été restitué à l'université à la fin du projet.

Par conséquent, la communication avec les dispositifs physiques, la récupération de mesures réelles et leur affichage en temps réel ne sont plus opérationnels.

La version actuelle reste utilisable sans ce matériel : elle permet de naviguer dans l'application, de gérer les différents éléments et de démarrer des sessions de jeu à partir des données présentes dans la base de données. Ces données sont fictives et servent uniquement à la démonstration.

Le déploiement présenté dans ce README concerne donc uniquement la partie web et la base de données. Il ne permet pas de reproduire l'installation matérielle originale.

## Concept

EnigmaTech a été imaginé comme une solution B2B destinée aux entreprises exploitant des escape games.

L'idée est de proposer aux opérateurs une plateforme centralisée pour gérer leur activité et superviser leurs différentes salles.

L'application s'organise autour de plusieurs éléments :

- Entreprises : chaque opérateur représente une entreprise d'escape game.
- Utilisateurs : les employés sont associés à une entreprise et disposent de différents rôles.
- Jeux : chaque entreprise peut gérer plusieurs escape games.
- Salles : chaque jeu est organisé en plusieurs salles.
- Étapes : chaque jeu comprend une succession d'étapes ou d'énigmes.
- Dispositifs : les salles peuvent contenir différents équipements et capteurs connectés.
- Mesures : les dispositifs sont censés transmettre des données pouvant notamment servir à valider certaines étapes.
- Sessions : les sessions de jeu peuvent être démarrées et terminées par le personnel.

L'objectif initial était de faciliter le suivi des parties par les game masters et de leur permettre de vérifier certaines conditions de jeu grâce aux informations remontées par les dispositifs.

## Technologies et dépendances

Le projet original reposait sur les technologies suivantes :

- PHP : logique applicative côté serveur.
- HTML et CSS : interface utilisateur.
- JavaScript : fonctionnalités côté client.
- MariaDB / MySQL : système de gestion de base de données relationnelle.
- Apache2 : serveur web.
- Domoticz : logiciel domotique utilisé pour communiquer avec les dispositifs connectés.
- Raspberry Pi : serveur matériel utilisé dans la première version du projet.
- Z-Wave : protocole de communication utilisé par les capteurs et équipements connectés.

Pour lancer la version de démonstration actuelle, seules les dépendances Apache2, PHP et MariaDB/MySQL sont nécessaires.

## Base de données

La base de données est relationnelle et a été conçue autour des différents éléments d'une entreprise d'escape game.

Les principales tables sont :

- `societe` : informations sur les entreprises.
- `utilisateur` : informations sur les utilisateurs, leur rôle et leur entreprise.
- `jeu` : jeux gérés par les entreprises.
- `salle` : salles associées aux jeux.
- `etape` : différentes étapes d'un jeu.
- `dispositif` : dispositifs associés aux salles.
- `mesure` : mesures enregistrées par les dispositifs.
- `etatsession` : sessions de jeu, avec leurs heures de début et de fin.
- `communiquer` : relations de communication entre les salles.
- `valider` : association entre les étapes, les dispositifs et les mesures attendues.

Le fichier `creabaseEtInsert.sql` contient les instructions de création de la base de données, des tables et d'insertion des données de démonstration.

Les données présentes sont entièrement fictives. Elles permettent de tester l'application sans avoir besoin des capteurs physiques. On y retrouve plusieurs entreprises, utilisateurs, jeux, salles, dispositifs et mesures simulées.

### Importer la base de données

Le fichier SQL crée la base `enigmatech`, ses tables et les données de démonstration.

Depuis la racine du projet, il est possible de l'importer avec :

```bash
sudo mariadb < creabaseEtInsert.sql
```

Il est également possible de l'importer depuis phpMyAdmin.

### Comptes de démonstration

La base contient plusieurs comptes avec différents rôles.

Pour consulter les comptes disponibles après l'importation :

```sql
USE enigmatech;

SELECT * FROM utilisateur;
```

La colonne `role` permet de distinguer les types de comptes :

- `Admin` : compte administratif.
- `Gamemaster` : compte destiné au personnel chargé de gérer les sessions de jeu.
- `Opérateur` : compte associé à un opérateur d'escape game.

Tous les comptes de démonstration utilisent le même mot de passe :

```text
1234
```

Les mots de passe ne sont pas stockés en clair dans la base de données. Ils sont enregistrés sous forme de hash et vérifiés lors de la connexion à l'aide de la fonction PHP `password_verify()`.

Pour se connecter, il suffit d'utiliser l'adresse e-mail d'un compte présent dans la table `utilisateur` et le mot de passe `1234`.

Quelques exemples :

| Rôle | Adresse e-mail | Mot de passe |
|---|---|---|
| Admin | admin@enigmatech.fr | 1234 |
| Gamemaster | emma@enigmaescape.fr | 1234 |
| Opérateur | leo@darkroom.fr | 1234 |

## Fonctionnalités

La version actuelle permet notamment de :

- Se connecter avec différents types de comptes.
- Accéder aux interfaces de l'application.
- Consulter les entreprises, les utilisateurs et les jeux.
- Gérer les salles et les étapes des jeux.
- Démarrer et terminer des sessions de jeu.
- Consulter les informations enregistrées dans la base de données.

Les mesures affichées dans la base sont des données de démonstration. La connexion aux capteurs physiques ne fait pas partie de la version actuelle.

## Installation et déploiement local

L'environnement de développement utilisé actuellement est Ubuntu sous WSL.

### 1. Installer les dépendances

Sous Ubuntu :

```bash
sudo apt update
sudo apt install apache2 mariadb-server php libapache2-mod-php php-mysql
```

### 2. Cloner le projet

```bash
git clone https://github.com/moniraksam/EnigmaTech.git
```

Placer ensuite le projet dans le répertoire utilisé par Apache, ou configurer un VirtualHost pointant vers le dossier du projet.

### 3. Configurer la base de données

Importer le fichier SQL :

```bash
sudo mariadb < creabaseEtInsert.sql
```

Créer ensuite le fichier de configuration local à partir de l'exemple fourni :

```bash
cp config/database.example.php config/database.php
```

Modifier `config/database.php` avec les identifiants de connexion à MariaDB :

```php
<?php

define('DB_HOST', 'localhost');
define('DB_NAME', 'enigmatech');
define('DB_USER', 'YOUR_USERNAME');
define('DB_PASS', 'YOUR_PASSWORD');

?>
```

Le fichier `config/database.php` contient les identifiants locaux et n'est pas versionné sur GitHub. Il faut donc le créer manuellement après avoir récupéré le projet.

### 4. Configurer Apache

Configurer un VirtualHost Apache pointant vers le répertoire du projet.

Exemple de configuration :

```apache
<VirtualHost *:80>
    ServerName enigmatech.local
    DocumentRoot /var/www/html/EnigmaTech

    <Directory /var/www/html/EnigmaTech>
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/enigmatech_error.log
    CustomLog ${APACHE_LOG_DIR}/enigmatech_access.log combined
</VirtualHost>
```

Activer le site et recharger Apache :

```bash
sudo a2ensite enigmatech.conf
sudo systemctl reload apache2
```

Ajouter également `enigmatech.local` au fichier `/etc/hosts` :

```text
127.0.0.1 enigmatech.local
```

Adapter le chemin `DocumentRoot` si le projet est installé dans un autre répertoire.

### 5. Accéder à l'application

Une fois Apache et MariaDB démarrés, ouvrir :

```text
http://enigmatech.local
```

La page de connexion permet ensuite d'utiliser les comptes de démonstration présentés dans la section précédente.