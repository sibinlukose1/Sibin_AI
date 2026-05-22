#!/bin/bash
# deploy.sh — commit, push, and deploy to production

MSG=${1:-"deploy: $(date '+%Y-%m-%d %H:%M')"}

echo "📦 Staging all changes..."
git add -A

echo "💬 Committing: $MSG"
git commit -m "$MSG"

echo "⬆️  Pushing to GitHub..."
git push origin main

echo "🚀 Deploying to Vercel production..."
vercel --prod

echo "✅ Done! Check https://threatfinder.ai in ~30 seconds"