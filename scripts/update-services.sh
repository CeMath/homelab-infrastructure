#!/bin/bash
# update-services.sh — Actualiza todas las imágenes

echo "🔄 Pulling latest images..."
docker compose pull

echo "🔄 Restarting services..."
docker compose up -d

echo "🧹 Cleaning old images..."
docker image prune -f

echo "✅ Update completo"