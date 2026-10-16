# BorgTech Sentinel

Plataforma SaaS de Observabilidade, Monitoramento, APM e AIOps (Single Pane of Glass).

## Arquitetura

- **Ambiente A (VPS 1 vCPU / 1 GB):** backend FastAPI + PostgreSQL tunado + `cloudflared` (sem portas expostas).
- **Ambiente B (Homelab 4 GB):** OpenTelemetry Collector, Zabbix 8 e demais coletores.
- **CI/CD:** GitHub Actions faz o build, publica no GHCR e faz o deploy via SSH na VPS.

## Estrutura

| Pasta | Conteúdo |
|---|---|
| `backend/` | API FastAPI (módulos: auth, ingestao, integracao_zabbix, ai_agent, simulador) |
| `frontend/` | Dashboard (Fase 2) |
| `deploy/vps/` | Compose do Ambiente A |
| `deploy/homelab/` | Compose do Ambiente B |
| `docs/` | Arquitetura e runbooks |

## Dev rápido (backend)

```bash
make install
make run      # http://localhost:8000/health
make test
```

## Status

Fase 1 em andamento: Passo 1 (repositório) e Passo 2 (Hello World).
