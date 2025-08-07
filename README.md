# FitRang Platform - Main Orchestration Repo

This is the central repository for the **FitRang Platform** – a distributed fashion-tech application that has outfit analysis, real-time notifications, authentication, and more.

This repository contains:
- `docker-compose.yml` – for spinning up all the essential microservices and dependencies.
- `run.sh` – for cloning all dependent service and frontend repositories into appropriate directories.

---

## 📦 Repository Structure

```

.
├── docker-compose.yml       # Defines all services, networks, and volumes
├── run.sh                   # Script to clone all service repositories
├── README.md                # You're here
└── ...                      # Other project-level files and scripts

````

---

## 🚀 Getting Started

### 1. Clone This Repository

```bash
git clone https://github.com/Fit-Rang/fitrang-main.git
cd fitrang-main
````

### 2. Run the Setup Script

This script clones all required microservices and frontend repos into the expected directory structure.

```bash
chmod +x run.sh
./run.sh
```
### 3. Start the Stack

Make sure Docker and Docker Compose are installed. Then run:

```bash
docker-compose up --build
```

> This will spin up **Keycloak**, **Kong**, **Redis**, **Elasticsearch**, **all backend services**, and **frontend apps** (if configured as services).

---

## 🧰 Requirements

* Docker v20+
* Docker Compose v2.5+
* Git
* Bash shell (for running `run.sh`)

---

## 🧠 Services Orchestrated

| Service              | Description                                      |
| -------------------- | ------------------------------------------------ |
| **Keycloak**         | Auth server, clients: `email-verifier`, `kong`   |
| **Kong**             | API Gateway with custom plugins                  |
| **Email Verifier**   | OTP-based registration with Redis + SMTP         |
| **Profile Service**  | Manages user dossiers and profile info           |
| **Notification**     | Real-time & stored notifications via WebSocket   |
| **Analysis Service** | Sends product+profile data to ChatGPT for review |
| **Indexing Worker**  | Indexes profiles and dossiers into Elasticsearch |
| **Main UI**          | React web application for users                  |
| **Extension**        | Chrome extension for browsing fashion products   |
| **Redis**            | Caching + OTP store                              |
| **Elasticsearch**    | Search & analysis data storage                   |

---

## 🔐 Authentication

* All protected services require a valid JWT access token.
* Tokens are issued by **Keycloak** under the `FitRang` realm.
* Kong handles token introspection for secured routes.

---

## 🧪 Testing Individual Services

Each service can be tested independently by navigating into the respective cloned directory and running it via:

```bash
docker-compose up --build
```

Make sure environment variables and ports do not conflict.

---

## 📦 Future Improvements

* CI/CD pipelines per service
* GitHub Container Registry (GHCR) support
* Centralized logging (e.g., Loki/Grafana)
* Helm chart support for Kubernetes

