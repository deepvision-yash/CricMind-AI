# Sync script for CricMind-AI
# This script automates the process of pushing data updates to GitHub

Write-Host "Updating CricMind-AI data..." -ForegroundColor Cyan

# Add all changes
git add .

# Prompt for a commit message or use a default one with timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$commitMessage = "Data update: $timestamp"

git commit -m "$commitMessage"

# Push to origin
Write-Host "Pushing to GitHub..." -ForegroundColor Green
git push origin main

Write-Host "Sync complete!" -ForegroundColor Green
