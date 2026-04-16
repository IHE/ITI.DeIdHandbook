#!/usr/bin/env bash

# One-shot non-interactive run of the FHIR IG Publisher in Docker.
# Mounts the current project directory into the container, updates the
# publisher jar, generates the IG, and exits.
#
# Resource controls can be customized via environment variables:
#   CPUS (default: 2), MEMORY (default: 6g), MEMORY_SWAP (default: 8g)
#   JAVA_TOOL_OPTIONS (default: -Xmx4g -Xms512m -Dfile.encoding=UTF-8)
#
# Terminology mode:
#   Defaults to OFFLINE (adds "-tx n/a") to avoid server latency.
#   Switch to ONLINE only when explicitly requested:
#     - Set ONLINE_TX=1 to force online
#   Override remains available:
#     - Set FORCE_OFFLINE=1 to force offline
#
# Usage:
#   ./run-docker.sh                 # run with defaults
#   CPUS=4 MEMORY=8g ./run-docker.sh
#   # Pass extra args to _genonce.sh, e.g. tx options:
#   ./run-docker.sh -tx n/a

set -euo pipefail

CPUS="${CPUS:-4}"
MEMORY="${MEMORY:-8g}"
MEMORY_SWAP="${MEMORY_SWAP:-10g}"
JAVA_TOOL_OPTIONS=${JAVA_TOOL_OPTIONS:-"-Xmx6g -Xms1g -Dfile.encoding=UTF-8"}
# Allow overriding the Docker image tag for custom publishers
PUBLISHER_IMAGE="${PUBLISHER_IMAGE:-fhir-ig-publisher:latest}"

# Persist FHIR package cache across runs to avoid re-downloading.
# Override with FHIR_PACKAGE_CACHE_DIR if desired.
FHIR_PACKAGE_CACHE_DIR="${FHIR_PACKAGE_CACHE_DIR:-$HOME/.fhir}"
mkdir -p "$FHIR_PACKAGE_CACHE_DIR"

# Decide terminology mode: offline by default; auto online when caches present
FORCE_OFFLINE="${FORCE_OFFLINE:-}"
ONLINE_TX="${ONLINE_TX:-}"

TX_ARG=""
if [[ -n "$ONLINE_TX" ]]; then
  TX_ARG=""
  echo "TX mode: ONLINE (override)"
elif [[ -n "$FORCE_OFFLINE" ]]; then
  TX_ARG="-tx n/a"
  echo "TX mode: OFFLINE (override)"
else
  TX_ARG="-tx n/a"
  echo "TX mode: OFFLINE (default)"
fi

docker run --rm \
  --cpus "$CPUS" \
  --memory "$MEMORY" \
  --memory-swap "$MEMORY_SWAP" \
  -e JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS" \
  -v "$(pwd):/workspace" \
  -v "$FHIR_PACKAGE_CACHE_DIR:/root/.fhir" \
  -v "$FHIR_PACKAGE_CACHE_DIR:/home/publisher/.fhir" \
  -w /workspace \
  "$PUBLISHER_IMAGE" \
  bash -lc "./_genonce.sh $TX_ARG $*"
