#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
mkdir -p "$ROOT/evidence/test_outputs"
cd "$ROOT/backend"
npm test | tee "$ROOT/evidence/test_outputs/backend-tests.txt"
