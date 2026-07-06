#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../backend"
npx ts-node prisma/seed.ts
