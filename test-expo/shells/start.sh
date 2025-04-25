#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "🚀 Starting Expo development container..."

if [ "$1" = "--build" ]; then
  docker-compose up -d --build
else
  docker-compose up -d
fi

echo "✅ Container is up and running!"
