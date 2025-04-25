#!/bin/sh
set -e

# node_modules がなければ npm installする
if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules)" ]; then
  echo "Installing dependencies..."
  npm install
else
  echo "node_modules already exists. Skipping npm install."
fi

echo "Starting Expo..."
npx expo start