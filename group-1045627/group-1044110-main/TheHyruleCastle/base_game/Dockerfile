# ===============================================
# Image Docker pour application Hyrule castle
# Description : Conteneuriser Hyrule castle en TypeScript
# Auteur      : kassak_s
# Version     : 1.0
# Date        : 2024-11-08
# ===============================================

# -------------------------------
# Étape 1 : Construction
# -------------------------------
  FROM node:18-alpine AS build

  # Définir le répertoire de travail dans le conteneur
  WORKDIR /app
  
  # Copier les fichiers package.json et package-lock.json
  COPY package.json package-lock.json ./
  
  # Installer toutes les dépendances (production et développement)
  RUN npm install
  
  # Copier le reste des fichiers de l'application
  COPY . .
  
  # Compiler le code TypeScript en JavaScript
  RUN npx tsc
  
  # -------------------------------
  # Étape 2 : Image Finale
  # -------------------------------
  FROM node:18-alpine
  
  # Définir le répertoire de travail dans le conteneur
  WORKDIR /app
  
  # Copier les fichiers package.json et package-lock.json
  COPY package.json package-lock.json ./
  
  # Installer uniquement les dépendances de production
  RUN npm install --production
  
  # Copier les fichiers compilés depuis l'étape de construction
  COPY --from=build /app/dist ./dist
  
  # Définir la variable d'environnement pour le répertoire des données
  ENV DATA_DIR=/app/data
  
  # Définir le dossier contenant les fichiers de données JSON comme volume
  VOLUME ["/app/data"]
  
  # Exposer le port sur lequel l'application écoute (ajustez si nécessaire)
  EXPOSE 3000
  
  # Définir la commande par défaut pour exécuter l'application compilée
  CMD ["node", "dist/main.js"]