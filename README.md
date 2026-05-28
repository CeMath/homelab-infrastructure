# 🏠 Homelab Infrastructure

Personal homelab setup running on a self-hosted server using Docker Compose.
Designed for media serving, monitoring, and local services management.

## 🧱 Stack

| Service | Role |
|---|---|
| Traefik | Reverse proxy + SSL |
| Portainer | Container management |
| Grafana + Prometheus | Monitoring & metrics |
| Jellyfin | Media server |
| PostgreSQL | Database |
| Uptime Kuma | Uptime monitoring |

## 📁 Structure

```
homelab-infrastructure/
├── docker-compose.yml
├── .env.example
├── .gitignore
├── README.md
├── traefik/
│   ├── traefik.yml
│   └── dynamic/
├── monitoring/
│   ├── prometheus.yml
│   └── grafana/
│       └── dashboards/
├── services/
│   ├── jellyfin/
│   └── postgres/
├── scripts/
│   ├── backup.sh
│   └── update-services.sh
└── docs/
    ├── architecture.md
    └── diagrams/
        └── homelab-diagram.png
```

## 🚀 Getting Started

1. Clone the repo
2. Copy `.env.example` to `.env` and fill in your values
3. Run `docker compose up -d`

## 📊 Architecture

See [docs/architecture.md](docs/architecture.md)
