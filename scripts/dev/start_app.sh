#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../app"
flutter pub get
flutter run
