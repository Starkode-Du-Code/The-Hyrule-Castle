#!/bin/bash

# script.sh - Script pour construire et exécuter le conteneur Docker Hyrule Castle

# Nom du conteneur Docker
CONTAINER_NAME="hyrule_castle_container2"

# Fonction pour arrêter et supprimer le conteneur existant
cleanup() {
    if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
        echo "Arrêt du conteneur existant..."
        docker stop $CONTAINER_NAME
        echo "Suppression du conteneur existant..."
        docker rm $CONTAINER_NAME
    fi
}

# Fonction pour construire l'image Docker
build_image() {
    echo "Construction de l'image Docker 'hyrule_castle:latest'..."
    docker build -t hyrule_castle:latest .
    echo "Image Docker construite avec succès."
}

# Fonction pour exécuter le conteneur Docker en mode interactif
run_container() {
    echo "Démarrage du conteneur Hyrule Castle..."
    docker run -it \
      --name $CONTAINER_NAME \
      -v "$(pwd)/data:/app/data" \
      -p 3002:3000 \
      hyrule_castle:latest
}

# Fonction pour afficher les options d'utilisation
usage() {
    echo "Usage: sudo ./script.sh [options]"
    echo "Options:"
    echo "  -b, --build      Construire l'image Docker avant d'exécuter"
    echo "  -r, --run        Exécuter le conteneur Docker"
    echo "  -h, --help       Afficher ce message d'aide"
}

# Initialiser les variables d'options
BUILD=false
RUN=false

# Parse des arguments en ligne de commande
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -b|--build) BUILD=true ;;
        -r|--run) RUN=true ;;
        -h|--help) usage; exit 0 ;;
        *) echo "Paramètre inconnu passé: $1"; usage; exit 1 ;;
    esac
    shift
done

# Si aucune option n'est spécifiée, effectuer les deux actions (build et run)
if [ "$BUILD" = false ] && [ "$RUN" = false ]; then
    BUILD=true
    RUN=true
fi

# Construire l'image Docker si demandé
if [ "$BUILD" = true ]; then
    build_image
fi

# Arrêter et supprimer le conteneur existant puis exécuter le conteneur si demandé
if [ "$RUN" = true ]; then
    cleanup
    run_container
fi
