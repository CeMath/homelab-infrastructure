#!/bin/bash
# backup.sh — Backup de volúmenes Docker

BACKUP_DIR="./backups"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$BACKUP_DIR"

echo "🔄 Iniciando backup..."

docker run --rm \
  -v homelab-infrastructure_postgres_data:/data \
  -v $(pwd)/backups:/backup \
  alpine tar czf /backup/postgres_$DATE.tar.gz -C /data .

docker run --rm \
  -v homelab-infrastructure_grafana_data:/data \
  -v $(pwd)/backups:/backup \
  alpine tar czf /backup/grafana_$DATE.tar.gz -C /data .

echo "✅ Backup completado en $BACKUP_DIR"