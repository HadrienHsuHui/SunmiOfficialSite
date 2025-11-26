#!/bin/bash

# SUNBAY Official Website GitHub Setup Script

echo "================================"
echo "🚀 SUNBAY GitHub Setup Wizard"
echo "================================"
echo ""

# Check if Git repository already exists
if [ -d ".git" ]; then
    echo "⚠️  Existing Git repository detected"
    read -p "Do you want to reinitialize? (y/N): " reinit
    if [ "$reinit" = "y" ] || [ "$reinit" = "Y" ]; then
        rm -rf .git
        echo "✅ Old Git repository removed"
    else
        echo "ℹ️  Keeping existing Git repository"
    fi
fi

# Initialize Git repository
if [ ! -d ".git" ]; then
    echo ""
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
fi

# Configure Git user information
echo ""
echo "👤 Configure Git user information"
read -p "Enter your Git username: " git_username
read -p "Enter your Git email: " git_email

git config user.name "$git_username"
git config user.email "$git_email"
echo "✅ Git user information configured"

# Add files
echo ""
echo "📝 Adding files to Git..."
git add .
echo "✅ Files added"

# Commit
echo ""
read -p "Enter commit message (default: Initial commit): " commit_message
commit_message=${commit_message:-"Initial commit: SUNBAY Official Website"}
git commit -m "$commit_message"
echo "✅ Commit completed"

# Rename branch to main
echo ""
echo "🌿 Renaming branch to main..."
git branch -M main
echo "✅ Branch renamed"

# Add remote repository
echo ""
echo "🔗 Adding remote repository"
read -p "Enter your GitHub username: " github_username
read -p "Enter repository name (default: sunbay-official-site): " repo_name
repo_name=${repo_name:-sunbay-official-site}

remote_url="https://github.com/$github_username/$repo_name.git"
echo "Remote repository URL: $remote_url"

# Check if remote repository already exists
if git remote | grep -q "origin"; then
    echo "⚠️  Existing remote repository detected"
    git remote remove origin
fi

git remote add origin "$remote_url"
echo "✅ Remote repository added"

# Push to GitHub
echo ""
echo "🚀 Preparing to push to GitHub..."
echo "⚠️  Please ensure you have created the repository on GitHub: $repo_name"
read -p "Push now? (y/N): " push_now

if [ "$push_now" = "y" ] || [ "$push_now" = "Y" ]; then
    echo ""
    echo "📤 Pushing to GitHub..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "================================"
        echo "✅ Successfully pushed to GitHub!"
        echo "================================"
        echo ""
        echo "🌐 Repository URL: https://github.com/$github_username/$repo_name"
        echo ""
        echo "📋 Next steps:"
        echo "1. Visit https://vercel.com"
        echo "2. Import your GitHub repository"
        echo "3. Configure and deploy"
        echo ""
        echo "📖 See GITHUB-SETUP.md for details"
    else
        echo ""
        echo "❌ Push failed"
        echo "Please check:"
        echo "1. GitHub repository exists"
        echo "2. You have push permissions"
        echo "3. Network connection is stable"
        echo ""
        echo "Manual push command:"
        echo "git push -u origin main"
    fi
else
    echo ""
    echo "ℹ️  Skipping push"
    echo ""
    echo "Manual push command:"
    echo "git push -u origin main"
fi

echo ""
echo "================================"
echo "✅ GitHub setup completed!"
echo "================================"
