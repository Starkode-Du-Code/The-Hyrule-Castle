# The Hyrule Castle 🏰

## Auteur : **Stark KASSA**

---

### Introduction 📖

Bienvenue dans **The Hyrule Castle**, un jeu de rôle textuel inspiré de l'univers de **Zelda**. Ce projet a été développé en **TypeScript** et utilise **Docker** pour la conteneurisation, ce qui facilite le déploiement et l'exécution du jeu sur différentes machines.

Dans ce jeu, vous incarnerez un héros courageux qui devra gravir les étages du château de Ganon, affronter des ennemis redoutables, vaincre des boss légendaires et sauver le royaume d'Hyrule. Préparez-vous à vivre une aventure épique pleine de défis et de surprises !

---

## Chapitre 1 : Prérequis et Installation 🛠️

### 1.1. Prérequis 🔧

Avant de commencer, assurez-vous d'avoir installé les éléments suivants sur votre machine :

- **Node.js** (version 18 ou supérieure) : [Télécharger Node.js](https://nodejs.org/en/download/)
- **npm** (généralement installé avec Node.js) : [Documentation npm](https://docs.npmjs.com/)
- **Docker** : [Installer Docker Desktop](https://www.docker.com/products/docker-desktop)
- **Git** : [Télécharger Git](https://git-scm.com/downloads)

### 1.2. Installation du Projet ⚙️

Suivez les étapes ci-dessous pour installer et exécuter le jeu sur votre machine.

#### 1.2.1. Cloner le Dépôt Git 📂

Ouvrez votre terminal et exécutez la commande suivante pour cloner le dépôt du projet :

```bash
git clone lien 

```

#### 1.2.2. Naviguer vers le Répertoire du Jeu de Base 📁

Déplacez-vous dans le répertoire base_game du projet :

```bash
cd TheHyruleCastle/base_game
```

#### 1.2.3. Installer les Dépendances 📦

Installez les dépendances du projet en utilisant npm :

```bash
npm install
```

#### 1.2.4. Compiler le Projet TypeScript 🛠️

Compilez le code TypeScript en JavaScript en exécutant :

```bash
npm run build
```

#### 1.2.5. Exécuter le Jeu Localement 🎮

Lancez le jeu en local avec la commande :

```bash
npm start
```
Vous devriez maintenant pouvoir jouer à The Hyrule Castle directement depuis votre terminal !

### 1.3. Utilisation de Docker 🐳

Si vous préférez exécuter le jeu dans un conteneur Docker, suivez les étapes suivantes.

#### 1.3.1. Construire l'Image Docker 🏗️

Exécutez le script script.sh pour construire l'image Docker :

```bash
./script.sh -b

```

Assurez-vous que le script est exécutable. Si ce n'est pas le cas, vous pouvez le rendre exécutable avec la commande **chmod +x script.sh**.

### 1.3.2. Exécuter le Conteneur Docker 🚀

Lancez le conteneur Docker en utilisant le même script :

```bash
./script.sh -r

```
Le jeu démarrera alors à l'intérieur du conteneur Docker, et vous pourrez y jouer comme précédemment.

---

## Liens Utiles 🔗

- **Documentation TypeScript** : [TypeScript Lang](https://www.typescriptlang.org/docs/)
- **Guide Node.js** : [Node.js Guides](https://nodejs.org/en/docs/)
- **Documentation npm** : [npm Docs](https://docs.npmjs.com/)
- **Documentation Docker** : [Docker Docs](https://docs.docker.com/)
- **Tutoriel Git** : [Git - Documentation](https://git-scm.com/doc)

---

## Remerciements 🙏

Merci d'avoir choisi de jouer à **The Hyrule Castle**. J'espère que vous apprécierez cette aventure autant que j'ai pris plaisir à le développer. N'hésitez pas à contribuer au projet ou à me faire part de vos retours !

---

**Amusez-vous bien ! 🎉**

---

## Structure du Projet 📁

Voici un aperçu de la structure des fichiers dans le répertoire `base_game` :

```bash
base_game/
├── Dockerfile
├── data/
│   ├── bosses.json
│   ├── enemies.json
│   ├── moves.json
│   └── players.json
├── package.json
├── package-lock.json
├── script.sh
├── src/
│   ├── character.ts
│   ├── gameLauncher.ts
│   ├── main.ts
│   ├── move.ts
│   └── tower.ts
└── tsconfig.json

```

---

## Chapitre 2 : Fonctionnalités du Jeu 🎮

### 2.1. Gameplay Général 🕹️

Dans **The Hyrule Castle**, vous progressez à travers différents étages du château, affrontant des ennemis et des boss à chaque niveau. Votre objectif est d'atteindre le sommet du château et de vaincre le boss final pour sauver le royaume.

### 2.2. Personnages et Ennemis 👥

- **Héros** : Vous incarnez un héros aléatoire parmi une sélection de personnages, chacun avec ses propres statistiques et compétences.
- **Ennemis** : Vous affronterez une variété d'ennemis, chacun avec des forces et des faiblesses uniques.
- **Boss** : À la fin de certains étages, vous devrez combattre des boss puissants pour progresser.

### 2.3. Système de Combat ⚔️

Le jeu utilise un système de combat au tour par tour. À chaque tour, vous pouvez choisir une action parmi les options disponibles :

- **Attaquer** : Utilisez une compétence offensive pour infliger des dégâts à l'ennemi.
- **Se soigner** : Restaurez une partie de vos points de vie.
- **Utiliser un objet** : Utilisez un objet de votre inventaire pour obtenir divers effets.

### 2.4. Progression et Niveaux 🏆

En progressant dans le jeu, vous montez les étages du château. Chaque étage devient progressivement plus difficile, avec des ennemis plus forts et des défis plus grands.

---

## Chapitre 3 : Structure du Code 🗂️

Le projet est organisé de manière modulaire pour faciliter la maintenance et l'extension du code.

### 3.1. Fichiers Principaux 📄

- **`character.ts`** : Définit les classes pour les personnages du jeu, y compris les héros et les ennemis.
- **`move.ts`** : Contient la classe pour les mouvements et compétences que les personnages peuvent utiliser.
- **`tower.ts`** : Gère la progression des niveaux et la logique de la tour.
- **`gameLauncher.ts`** : Point d'entrée principal qui initialise le jeu et contrôle le flux général.
- **`main.ts`** : Fichier principal qui démarre l'application.

### 3.2. Exemple de Code : Classe `Character` 👤

La classe `Character` est la classe de base pour tous les personnages du jeu.

```typescript
export class Character {
    protected id: number;
    protected name: string;
    protected hp: number;
    protected hpMax: number;
    protected str: number;
    protected movePool: Array<Move>;

    constructor(name: string, hp: number, hpMax: number, str: number, movePool: Array<Move>) {
        // Initialisation des propriétés
    }

    // Méthodes pour obtenir les informations du personnage
    public getId() { /* ... */ }
    public getHp() { /* ... */ }
    public getName() { /* ... */ }
    // Autres méthodes...
}
```

Cette classe sert de base pour les classes Hero et Enemy, qui héritent de Character et ajoutent leurs propres fonctionnalités spécifiques.

### 3.3. Exemple de Code : Système de Combat 🛡️

Le système de combat est géré dans la méthode **chooseMove** des personnages. Pour les héros, le joueur est invité à choisir une action :


```typescript
public chooseMove(lvl: Tower) {
    const movePoolName: Array<string> = this.movePool.map(move => move.getName());
    const charName: Array<string> = lvl.getListChar().map(char => char.getName());
    // Le joueur choisit une compétence et une cible
    const moveIndex = readline.keyInSelect(movePoolName, 'Choisissez une compétence:');
    const targetIndex = readline.keyInSelect(charName, 'Choisissez une cible:');
    this.attack(this.movePool[moveIndex], lvl.getListChar()[targetIndex]);
}

```
Pour les ennemis, les actions sont choisies aléatoirement :

```typescript 
public chooseMove(lvl: Tower) {
    const move = this.movePool[Math.floor(Math.random() * this.movePool.length)];
    const target = lvl.getListHe()[Math.floor(Math.random() * lvl.getListHe().length)];
    this.attack(move, target);
}
```


## Chapitre 4 : Le Jeu Modifié (modded_game) 🛠️✨

Le dossier modded_game contient une version améliorée du jeu avec des fonctionnalités supplémentaires telles que :

.ouvelles classes de personnages : Ajout de classes comme Mage, Archer, etc.

.Système d'équipement : Possibilité d'équiper des armes et armures pour améliorer les statistiques.

.Gestion de la sauvegarde : Sauvegarde et chargement de la progression du jeu.

.Nouveaux ennemis et boss : Ajout de nouveaux adversaires pour enrichir l'expérience de jeu.

.Butin et objets : Introduction d'un système de loot avec des objets rares.

### 4.1. Installation du modded_game ⚙️

#### 4.1.1. Naviguer vers le Répertoire du Jeu Modifié 📁

Depuis le répertoire racine du projet, déplacez-vous dans le dossier **modded_game** :

```bash
cd ../modded_game
```

#### 4.1.2. Installer les Dépendances 📦

Comme pour le jeu de base, installez les dépendances :

```bash 
npm install
```

#### 4.1.3. Compiler le Projet TypeScript 🛠️

Compilez et Lancez  le code TypeScript :

```bash 
npm run build
npm start
```

### 4.2. Fonctionnalités du *modded_game* 🆕

Le *modded_game* ajoute les fonctionnalités suivantes :

- **Classes de Personnages** : Choisissez une classe spécifique pour votre héros, influençant ses capacités et son style de jeu.
- **Équipement** : Trouvez et équipez des armes et armures pour améliorer vos statistiques.
- **Sauvegarde de Partie** : Enregistrez votre progression et reprenez le jeu ultérieurement.
- **Système de Loot** : Obtenez des objets en battant des ennemis et des boss.


### 4.3. Fichiers Principaux du *modded_game* 📄

En plus des fichiers du jeu de base, le *modded_game* inclut :

- **`class.ts`** : Gère les différentes classes de personnages.
- **`equipement.ts`** : Définit les objets d'équipement disponibles.
- **`save.ts`** : Gère la sauvegarde et le chargement de la progression.
- Nouveaux fichiers JSON dans le dossier `data` :
  - **`class.json`**
  - **`loot.json`**

### 4.4. Exemple de Code : Gestion de l'Équipement 🛡️

La classe `Equipement` permet de gérer les objets que le héros peut équiper :

```typescript
export class Equipement {
    private name: string;
    private type: string;
    private bonus: number;

    constructor(name: string, type: string, bonus: number) {
        this.name = name;
        this.type = type;
        this.bonus = bonus;
    }

    // Méthodes pour appliquer les bonus à un personnage
}
```

### 4.5. Exemple de Code : Système de Sauvegarde 💾

Le fichier save.ts gère la sauvegarde de l'état du jeu :

```typescript 
export class Save {
    public saveGame(gameState: GameState) {
        // Code pour enregistrer l'état du jeu dans un fichier JSON
    }

    public loadGame(): GameState {
        // Code pour charger l'état du jeu depuis un fichier JSON
    }
}
```

## Licence 📜

Ce projet est sous licence **MIT**. Pour plus de détails, consultez le fichier [LICENSE](LICENSE).

---

## Contact 📬

Pour toute question, suggestion ou demande d'assistance, n'hésitez pas à contacter **Stark KASSA**.

---

> **Bon jeu et bonne exploration dans l’univers de The Hyrule Castle !** 🎮🏰
