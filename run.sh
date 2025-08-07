#!/bin/bash

set -e

echo "📦 Cloning backend services..."
git clone https://github.com/Fit-Rang/email-verifier.git
git clone https://github.com/Fit-Rang/profile-service.git
git clone https://github.com/Fit-Rang/notification-service.git
git clone https://github.com/Fit-Rang/analysis-service.git
git clone https://github.com/Fit-Rang/indexing-worker.git

echo "💻 Cloning frontend projects..."
git clone https://github.com/Fit-Rang/fitrang-ui.git
git clone https://github.com/Fit-Rang/fitrang-extension.git

echo "✅ All repositories cloned successfully!"
