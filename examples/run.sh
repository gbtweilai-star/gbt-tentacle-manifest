#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_tentacle_manifest info
PYTHONPATH=src python -m gbt_tentacle_manifest check --payload '{}'
PYTHONPATH=src python -m gbt_tentacle_manifest run   --payload '{}'
