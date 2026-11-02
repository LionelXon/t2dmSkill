
#!/usr/bin/env bash

set -Eeuo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

echo "=== Universal Health Skills Bootstrap ==="

command -v uv >/dev/null 2>&1 || {
    echo "ERROR: uv is required"
    exit 1
}

test -f pyproject.toml
test -f uv.lock

echo "[1/4] Installing locked dependencies..."
uv sync --frozen --all-extras

echo "[2/4] Creating directories..."

mkdir -p \
    skills \
    registry \
    contracts/health \
    contracts/tools \
    adapters/generic \
    adapters/mcp \
    adapters/hosts \
    tests/unit \
    tests/integration \
    tests/compatibility \
    tests/safety \
    evals/datasets \
    data/fixtures \
    data/generated \
    artifacts/reports \
    artifacts/execution-traces

echo "[3/4] Initializing environment..."

if [[ -f .env.example && ! -f .env ]]; then
    cp .env.example .env
fi

echo "[4/4] Validating project..."

uv run python scripts/validate_harness.py

echo "=== Environment ready ==="
echo "No Agent-specific installation was performed."
