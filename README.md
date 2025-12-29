# HAPI FHIR Server

HAPI FHIR Server deployment for Ciyex healthcare platform.

## Overview

This repository contains the Kubernetes deployment configuration for HAPI FHIR R4 server.

## Deployment

### Dev Environment

The dev environment is automatically deployed via GitHub Actions when pushing to the `main` branch.

- **URL**: https://fhir.apps-dev.in.hinisoft.com
- **FHIR Endpoint**: https://fhir.apps-dev.in.hinisoft.com/fhir

### Manual Deployment

```bash
kubectl apply -k k8s/overlays/dev
```

## Configuration

Environment variables:
- `SERVER_ADDRESS`: The public URL of the FHIR server
- `SPRING_DATASOURCE_URL`: PostgreSQL connection URL
- `SPRING_DATASOURCE_USERNAME`: Database username
- `SPRING_DATASOURCE_PASSWORD`: Database password (from secret)

## Health Check

```bash
curl https://fhir.apps-dev.in.hinisoft.com/fhir/metadata
```
