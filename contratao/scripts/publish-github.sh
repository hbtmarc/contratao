#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if ! gh auth status &>/dev/null; then
  echo "Faça login no GitHub primeiro:"
  echo "  gh auth login"
  exit 1
fi

REPO="${1:-contratao}"

if git remote get-url origin &>/dev/null; then
  echo "Remote origin já configurado. Enviando alterações..."
  git push -u origin main
else
  gh repo create "$REPO" --public \
    --description "Plano Contrato — roadmap de preparação (GitHub Pages + Firebase)" \
    --source=. --remote=origin --push
fi

echo ""
echo "Próximos passos:"
echo "1. GitHub → Settings → Pages → verifique Source: GitHub Actions"
echo "2. Firebase → Authentication → Authorized domains → adicione: hbtmarc.github.io (e 127.0.0.1 se usar Live Server)"
echo "3. Site (após o workflow): https://hbtmarc.github.io/contratao/"
