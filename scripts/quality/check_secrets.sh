#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."

echo "Checking for forbidden files..."
if find . -name ".env" -o -name "*.pem" -o -name "*.key" | grep -q .; then
  echo "Forbidden secret-like file found."
  exit 1
fi

echo "Checking for common secret words..."
if grep -RInE "(password|token|secret|api_key|DATABASE_URL)" .   --exclude-dir=node_modules --exclude-dir=build --exclude-dir=.git; then
  echo "Review matches above. Some may be safe placeholders."
fi

echo "Secret check completed."
