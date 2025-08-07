#!/bin/bash

# Git commit and push script for MUFG Bank prompt template repository
# This script will:
# 1. Show current git status
# 2. Add all changes to staging
# 3. Create a clean commit (following CLAUDE.md guidelines)
# 4. Push changes to GitHub repository
#
# Usage: ./gitcommit.sh "commit message" [branch_name]
# Example: ./gitcommit.sh "Update Contract Analysis template with new fields" main

if [ -z "$1" ]; then
    echo "❌ Error: Please provide a commit message"
    echo "Usage: ./gitcommit.sh \"commit message\" [branch_name]"
    echo "Example: ./gitcommit.sh \"Update Contract Analysis template with new fields\" main"
    exit 1
fi

COMMIT_MESSAGE="$1"
BRANCH=${2:-main}

echo "🔍 Current git status:"
git status --short

echo ""
echo "📝 Adding all changes to staging..."
git add .

echo ""
echo "💾 Creating commit with message: $COMMIT_MESSAGE"

# Create clean commit following CLAUDE.md guidelines
# Note: No Claude attribution as per CLAUDE.md commit guidelines
git commit -m "$COMMIT_MESSAGE"

if [ $? -eq 0 ]; then
    echo "✅ Commit successful"
    
    echo ""
    echo "🚀 Pushing to GitHub branch: $BRANCH"
    git push origin $BRANCH
    
    if [ $? -eq 0 ]; then
        echo "✅ Successfully pushed to GitHub branch: $BRANCH"
        echo "🎉 All done! Changes are now live on GitHub."
    else
        echo "❌ Failed to push to GitHub"
        echo "💡 You may need to set up your GitHub remote or check your credentials"
        exit 1
    fi
else
    echo "❌ Commit failed"
    exit 1
fi