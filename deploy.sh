#!/bin/bash

# Network Switching Tutorial - GitHub Pages Quick Deploy Script
# This script helps you quickly deploy your tutorial to GitHub Pages

echo "🔌 Network Switching Tutorial - GitHub Pages Deployment"
echo "========================================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed"
    echo "Please install Git from https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " USERNAME

if [ -z "$USERNAME" ]; then
    echo "❌ Error: Username cannot be empty"
    exit 1
fi

# Get repository name
read -p "Enter repository name [network-switching-tutorial]: " REPO_NAME
REPO_NAME=${REPO_NAME:-network-switching-tutorial}

echo ""
echo "📝 Configuration:"
echo "   Username: $USERNAME"
echo "   Repository: $REPO_NAME"
echo "   URL: https://$USERNAME.github.io/$REPO_NAME/"
echo ""

read -p "Is this correct? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo "❌ Deployment cancelled"
    exit 0
fi

echo ""
echo "🚀 Starting deployment..."
echo ""

# Initialize git repository
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
echo "📝 Adding files..."
git add .

# Commit files
echo "💾 Committing files..."
git commit -m "Initial commit: Network Switching Tutorial" 2>/dev/null || echo "✅ Files already committed"

# Add remote
echo "🔗 Adding GitHub remote..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git"

# Rename branch to main
echo "🌿 Setting main branch..."
git branch -M main

echo ""
echo "⚠️  IMPORTANT:"
echo "Before pushing, make sure you have created the repository on GitHub:"
echo "1. Go to https://github.com/new"
echo "2. Repository name: $REPO_NAME"
echo "3. Make it PUBLIC"
echo "4. DON'T initialize with README"
echo "5. Click 'Create repository'"
echo ""

read -p "Have you created the repository on GitHub? (y/n): " REPO_CREATED

if [ "$REPO_CREATED" != "y" ] && [ "$REPO_CREATED" != "Y" ]; then
    echo ""
    echo "ℹ️  Please create the repository first, then run:"
    echo "   git push -u origin main"
    echo ""
    exit 0
fi

# Push to GitHub
echo ""
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Success! Files pushed to GitHub"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to https://github.com/$USERNAME/$REPO_NAME/settings/pages"
    echo "2. Under 'Source', select: Branch 'main', Folder '/ (root)'"
    echo "3. Click 'Save'"
    echo "4. Wait 1-2 minutes"
    echo "5. Your site will be live at: https://$USERNAME.github.io/$REPO_NAME/"
    echo ""
    echo "🌐 Opening GitHub repository in browser..."
    
    # Try to open browser (works on most Unix systems)
    if command -v xdg-open &> /dev/null; then
        xdg-open "https://github.com/$USERNAME/$REPO_NAME" 2>/dev/null &
    elif command -v open &> /dev/null; then
        open "https://github.com/$USERNAME/$REPO_NAME" 2>/dev/null &
    fi
else
    echo ""
    echo "❌ Error: Failed to push to GitHub"
    echo ""
    echo "Common issues:"
    echo "1. Repository doesn't exist - create it at https://github.com/new"
    echo "2. Wrong credentials - check your GitHub username and password"
    echo "3. Not authenticated - set up SSH key or personal access token"
    echo ""
    echo "For help, see: https://docs.github.com/en/get-started/quickstart"
fi

echo ""
echo "✨ Script complete!"
