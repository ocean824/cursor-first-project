# PowerShell Script to Setup New Project with CodeRabbit & CodeSprings
# Usage: .\setup-new-project.ps1 -ProjectName "my-new-project" -Description "My project description"

param(
    [Parameter(Mandatory=$true)]
    [string]$ProjectName,

    [Parameter(Mandatory=$false)]
    [string]$Description = "A new project with CodeRabbit and CodeSprings MCP integration",

    [Parameter(Mandatory=$false)]
    [string]$Visibility = "public"
)

Write-Host "🚀 Setting up new project: $ProjectName" -ForegroundColor Cyan

# Initialize git if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "📦 Initializing Git repository..." -ForegroundColor Yellow
    git init
}

# Configure git if needed
$gitUser = git config user.name
if (-not $gitUser) {
    git config --global user.name "ocean"
    git config --global user.email "ocean824@gmail.com"
    Write-Host "✅ Git configured with user: ocean" -ForegroundColor Green
}

# Update package.json with new project name
if (Test-Path "package.json") {
    Write-Host "📝 Updating package.json..." -ForegroundColor Yellow
    $packageJson = Get-Content "package.json" -Raw | ConvertFrom-Json
    $packageJson.name = $ProjectName
    $packageJson.description = $Description
    $packageJson | ConvertTo-Json -Depth 10 | Set-Content "package.json"
}

# Update README.md
if (Test-Path "README.md") {
    Write-Host "📝 Updating README.md..." -ForegroundColor Yellow
    $readme = @"
# $ProjectName

$Description

## Features

- Git version control
- CodeRabbit AI-powered code reviews
- Automated PR analysis
- CodeSprings MCP integration for enhanced development workflow
- Claude Code integration

## Setup

This project is configured to use CodeRabbit for automated code reviews on pull requests.

### MCP Integration

CodeSprings MCP is configured to provide additional development tools and features through the Model Context Protocol. The MCP server is accessible at ``https://mcp.codespring.app/mcp``.

### CodeRabbit

CodeRabbit will automatically review all pull requests. To enable:
1. Push this repository to GitHub
2. Install CodeRabbit app: https://github.com/apps/coderabbitai
3. Select this repository

## Usage

1. Create a new branch: ``git checkout -b feature/my-feature``
2. Make your changes
3. Commit: ``git add . && git commit -m "Your message"``
4. Push: ``git push -u origin feature/my-feature``
5. Create PR and let CodeRabbit review it automatically
"@
    $readme | Set-Content "README.md"
}

# Commit initial files
Write-Host "💾 Creating initial commit..." -ForegroundColor Yellow
git add .
git commit -m "Initial commit with CodeRabbit and CodeSprings MCP configuration

🤖 Generated with Claude Code
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# Create GitHub repository
Write-Host "🌐 Creating GitHub repository..." -ForegroundColor Yellow
$ghPath = "C:\Program Files\GitHub CLI\gh.exe"
& $ghPath repo create $ProjectName --$Visibility --source=. --remote=origin --push

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ GitHub repository created successfully!" -ForegroundColor Green
    $repoUrl = & $ghPath repo view --json url -q .url
    Write-Host "📦 Repository: $repoUrl" -ForegroundColor Cyan

    Write-Host ""
    Write-Host "🎯 Next Steps:" -ForegroundColor Yellow
    Write-Host "1. Install CodeRabbit: https://github.com/apps/coderabbitai" -ForegroundColor White
    Write-Host "2. Select your repository: $ProjectName" -ForegroundColor White
    Write-Host "3. Start coding and create PRs!" -ForegroundColor White
    Write-Host ""
    Write-Host "✨ CodeSprings MCP is already configured globally in Cursor!" -ForegroundColor Green
} else {
    Write-Host "❌ Failed to create GitHub repository" -ForegroundColor Red
    exit 1
}
