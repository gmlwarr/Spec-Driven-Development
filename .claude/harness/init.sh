#!/usr/bin/env bash
# Harness Init — TaskApp
# Rodado pelo agente no início de CADA sessão de código.
# Verifica que o projeto está em estado limpo antes de qualquer trabalho.
# Se qualquer passo falhar, o agente DEVE corrigir antes de seguir.

set -e
ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

echo "=== [1/4] Git status ==="
git status --short
BRANCH=$(git branch --show-current)
echo "Branch atual: $BRANCH"
echo ""

echo "=== [2/4] Últimos 10 commits ==="
git log --oneline -10
echo ""

echo "=== [3/4] Build de verificação ==="
./gradlew assembleDebug --quiet \
  && echo "BUILD OK" \
  || { echo "BUILD FALHOU — corrija antes de continuar"; exit 1; }
echo ""

echo "=== [4/4] Testes unitários ==="
./gradlew testDebugUnitTest --quiet \
  && echo "TESTES OK" \
  || { echo "TESTES FALHARAM — corrija antes de continuar"; exit 1; }
echo ""

echo "=== Ambiente verificado. Pronto para trabalhar. ==="
echo "Próximo passo: leia .claude/harness/claude-progress.md"
echo "e .claude/harness/feature_list.json antes de iniciar."
