#!/bin/bash
# Postman Creative DS — Publish script
# Usage: bash ~/projects/creative-ds/publish.sh
# Syncs local changes to GitHub. All pages using the CDN update within ~1 min.

set -e
cd "$(dirname "$0")"

echo "→ Staging changes..."
git add tokens.css components.css animations.js index.html sandbox.html template.html CLAUDE.md

if git diff --cached --quiet; then
  echo "✓ Nothing new to publish — design system is already up to date."
  exit 0
fi

echo "→ Committing..."
git commit -m "Design system update — $(date '+%b %-d')"

echo "→ Pushing to postman-eng/creative-ds..."
git push origin main

echo "→ Pushing to public CDN (ryandonida-ship-it/creative-ds)..."
git push personal main

echo ""
echo "✓ Published. Live in ~1 min at:"
echo "  https://ryandonida-ship-it.github.io/creative-ds/"
echo "  All pages using the CDN will update automatically."
