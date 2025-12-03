# ai-platform
---

## 🏗️ Architecture

This repository is organized as a **monorepo**.

- **Architecture Decisions:** See `docs/adr/` for Architecture Decision Records.
- **Infrastructure:** Core services are defined in `infra/docker-compose.yml`.

---

## ⚙️ Prerequisites

- **Operating System:** Windows 11 (WSL2 / Ubuntu 22.04)
- **Runtime:** Docker Desktop + Python 3.11
- **Tooling:** Poetry

---

## 🚀 Quick Start

To bring up the local development environment:

1. **Install Dependencies**
   ```bash
   make setup
   ```

2. **Start Infrastructure**
   ```bash
   make up
   ```

3. **Verify Services**
   ```bash
   docker ps
   ```

---

## 📂 Directory Structure

- **/services** —  The services including RAG Ingestion, Streaming, APIs, Spark Jobs.
- **/infra** — Infrastructure such as docker compose, environment configurations, and future kubernetes manifests.
- **/docs** —  ADRs,runbooks, architecture diagrams, benchmark results etc.

