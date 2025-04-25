#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "📄 Showing logs from the Expo development container..."

docker-compose logs -f app-build-server
