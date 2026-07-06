#!/usr/bin/env bash
set -euo pipefail

required_paths=(
  "README.md"
  ".gitignore"
  "LICENSE"
  ".env.example"
  "Makefile"
  "docker-compose.yml"
  "backend/package.json"
  "backend/src"
  "app/pubspec.yaml"
  "app/lib"
  "docs"
  "examples"
  "evidence"
  "scripts"
  "tests"
  ".github/workflows/ci.yml"
  ".github/dependabot.yml"
  ".github/ISSUE_TEMPLATE/bug_report.yml"
  ".github/ISSUE_TEMPLATE/feature_request.yml"
  ".github/PULL_REQUEST_TEMPLATE.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CODE_OF_CONDUCT.md"
  "SUPPORT.md"
  "ROADMAP.md"
  "CHANGELOG.md"
)

missing=0

for path in "${required_paths[@]}"; do
  if [[ ! -e "$path" ]]; then
    echo "Missing required path: $path"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "Project structure check failed."
  exit 1
fi

echo "Project structure check passed."
