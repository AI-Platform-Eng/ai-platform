# ADR 0001 — Monorepo Structure
**Status:** Accepted  
**Date:** 12-03-2025
**Authors:** Salman Farooq 

## Context
We will build a multi-service AI platform (ingestion, api, spark). A monorepo simplifies shared models, infra, CI and local development.

I plan to build a multi-service AI platform, a monorepo simplifies shared models, infrastructure, CI/CD and Local development.

## Decision
Use a single monorepo with dedicated top-level directories for `/services`, `/infra`, `/shared`, and `/docs`.

## Consequences
*Pros*
+ Easier integration testing and local development via docker-compose.
+ Shared Pydantic schemas and models live easily in /shared.
*Cons*
- Repo size increases over time; requires more disciplined branching and CI/CD setup (addressed in future ADRs).

## Alternatives
Polyrepo: Rejected due to duplication of configuration files (e.g., CI, Docker) and higher overhead for dependency management across services.