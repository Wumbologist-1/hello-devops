# hello-devops


A small DevOps proof-of-work project demonstrating containerization, Linux workflow, Docker Compose orchestration, and CI automation using GitHub Actions.

---

## Overview

This repository demonstrates:

- FastAPI microservice with health and version endpoints  
- Docker image build and container runtime  
- Docker Compose orchestration with environment variable injection  
- Linux-native workflow via WSL2 (Ubuntu)  
- GitHub Actions CI pipeline building Docker image on push  
- Clean Git practices with proper `.gitignore`  

---

## Tech Stack

- Python 3.11  
- FastAPI  
- Docker  
- Docker Compose  
- Ubuntu (WSL2)  
- GitHub Actions (CI)  

---

## Project Structure

```
hello-devops/
├── app/
│   ├── main.py
│   └── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── .github/workflows/
│   └── docker-build.yml
└── README.md
```

---

## Application Endpoints

| Endpoint   | Description                   |
|------------|-------------------------------|
| `/`        | Base route                    |
| `/health`  | Service health check          |
| `/version` | Returns version via env var   |

Example response:

```json
{
  "status": "ok"
}
```

---

## Run Locally (Virtual Environment)

Create and activate virtual environment:

```bash
python -m venv .venv
source .venv/bin/activate
```

Install dependencies:

```bash
pip install -r app/requirements.txt
```

Run the application:

```bash
uvicorn app.main:app --reload --port 8000
```

Open in browser:

```
http://localhost:8000/health
```

---

## Build and Run with Docker

Build image:

```bash
docker build -t hello-devops:local .
```

Run container:

```bash
docker run --rm -p 8000:8000 hello-devops:local
```

---

## Run with Docker Compose

Start services:

```bash
docker compose up --build
```

Stop services:

```bash
docker compose down
```

---

## Continuous Integration

This repository includes a GitHub Actions workflow that:

- Triggers on push to `main`
- Spins up a Linux runner
- Builds the Docker image
- Fails fast if the Docker build is broken

This enforces container integrity at the CI level and ensures reproducible builds.

---

## Why This Exists

This project serves as:

- A DevOps workflow practice environment  
- A demonstration of containerization fundamentals  
- A Linux-based CLI development workflow example  
- A CI/CD readiness proof-of-concept  

---

## Future Improvements

- Add automated tests to CI pipeline  
- Implement Docker image tagging strategy  
- Push image to container registry (Docker Hub / GHCR)  
- Add Terraform infrastructure deployment example  
- Expand CI pipeline to include linting and test stages  

---

## Author

Wumbologist-1

