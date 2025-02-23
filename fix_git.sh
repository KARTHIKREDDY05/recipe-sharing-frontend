#!/bin/bash

echo "🔄 Resetting Git Repository and Fixing Issues..."

# Step 1: Abort any ongoing Git rebase
echo "❌ Aborting any ongoing rebase..."
git rebase --abort

# Step 2: Hard reset to match the remote repository
echo "⚠️ Hard resetting to match origin/main..."
git reset --hard origin/main

# Step 3: Remove any leftover swap files
echo "🧹 Cleaning up any stuck swap files..."
rm -f ~/.git/.COMMIT_EDITMSG.swp
rm -f .git/.COMMIT_EDITMSG.swp

# Step 4: Fetch and rebase the latest version from GitHub
echo "🔄 Pulling latest changes with rebase..."
git pull origin main --rebase

# Step 5: Force push the clean version to GitHub
echo "🚀 Pushing clean version to GitHub..."
git push -u origin main --force

echo "✅ Git issues fixed! Your repository is now synced."
