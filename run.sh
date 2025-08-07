#!/bin/bash

set -e

echo "📦 Cloning backend services..."
git clone https://github.com/Fit-Rang/email-verifier.git
git clone https://github.com/Fit-Rang/profile-service.git
git clone https://github.com/Fit-Rang/kong.git
git clone https://github.com/Fit-Rang/keycloak.git
git clone https://github.com/Fit-Rang/notification_service.git
git clone https://github.com/Fit-Rang/analysis_service.git
git clone https://github.com/Fit-Rang/indexing-worker.git

echo "💻 Cloning frontend projects..."
git clone https://github.com/Fit-Rang/fitrang-ui.git
git clone https://github.com/Fit-Rang/fitrang-extension.git

echo "✅ All repositories cloned successfully!"
