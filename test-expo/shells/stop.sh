#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "🛑 Stopping Expo development container..."

docker-compose stop

echo "✅ Container has been stopped."
