# 🎯 Cursor Full Stack Template

This is your master template folder with everything pre-configured for instant project setup!

## ✨ What's Included

- ✅ **CodeRabbit** - Automatic AI code reviews on every PR
- ✅ **CodeSprings MCP** - Global MCP server integration
- ✅ **Claude Code** - AI coding assistant
- ✅ **GitHub CLI** - One-command repository creation
- ✅ **Git Config** - Pre-configured with your details
- ✅ **Setup Script** - Automated new project initialization

## 🚀 How to Use This Template

### Method 1: Duplicate This Folder (Recommended)

1. **Copy this entire folder** to a new location
   ```
   Copy-Item "C:\Users\Aniko\Desktop\Cursor First Project" -Destination "C:\Users\Aniko\Desktop\MyNewProject" -Recurse
   ```

2. **Open the new folder in Cursor**

3. **Run the setup script**
   ```powershell
   .\setup-new-project.ps1 -ProjectName "my-awesome-project" -Description "My new project"
   ```

4. **Install CodeRabbit on your new repository**
   - Go to: https://github.com/apps/coderabbitai
   - Click "Configure"
   - Select your new repository

5. **Start coding!**
   - CodeSprings MCP: ✅ Already working (global config)
   - Claude Code: ✅ Already working
   - CodeRabbit: ✅ Will review your PRs
   - Git/GitHub: ✅ Ready to go

### Method 2: Manual Setup

If you prefer manual setup:

1. Copy this folder to a new location
2. Delete the `.git` folder (to start fresh)
3. Update `package.json` with your project name
4. Update `README.md` with your project details
5. Run: `git init`
6. Run: `gh repo create your-project-name --public --source=. --push`
7. Install CodeRabbit on the new repository

## 📋 What's Already Configured

### Global Configuration (Works in ALL projects)
- **CodeSprings MCP**: `C:\Users\Aniko\.cursor\mcp.json`
- **Git User**: ocean (ocean824@gmail.com)
- **GitHub CLI**: Authenticated and ready

### Per-Project Configuration (Copy with template)
- **CodeRabbit Config**: `.coderabbit.yaml`
- **Git Ignore**: `.gitignore`
- **Package Config**: `package.json`
- **Setup Script**: `setup-new-project.ps1`

## 🔧 Customizing the Template

You can customize `.coderabbit.yaml` to change:
- Review strictness
- File patterns to ignore
- Custom review instructions
- Auto-review settings

## 📦 File Structure

```
Cursor First Project/
├── .coderabbit.yaml          # CodeRabbit configuration
├── .gitignore                # Git ignore patterns
├── .template-config.json     # Template metadata
├── package.json              # Node.js project config
├── setup-new-project.ps1     # Automated setup script
├── TEMPLATE-README.md        # This file
├── README.md                 # Project README (will be updated by script)
├── index.js                  # Sample entry point
└── utils.js                  # Sample utilities
```

## 🎓 Tips

1. **Keep this folder as your master template** - Don't modify it for actual projects
2. **Always copy, never move** - Keep the original template intact
3. **Update the template** - When you add useful configs, update this master copy
4. **CodeRabbit per repo** - You'll need to install CodeRabbit for each new repository
5. **MCP is global** - CodeSprings MCP works automatically in all Cursor projects

## 🔄 Updating Your Template

To add improvements to your template:
1. Make changes in this folder
2. Test them
3. All future projects will have these improvements

## 💡 Quick Reference

**Create new project:**
```powershell
# Copy template
Copy-Item "C:\Users\Aniko\Desktop\Cursor First Project" "C:\path\to\new-project" -Recurse
cd C:\path\to\new-project

# Setup
.\setup-new-project.ps1 -ProjectName "new-project-name"

# Install CodeRabbit
Start-Process "https://github.com/apps/coderabbitai"
```

**Check MCP status:**
```powershell
Get-Content C:\Users\Aniko\.cursor\mcp.json
```

**Test CodeRabbit:**
```bash
# Create feature branch
git checkout -b feature/test

# Make changes, commit, push
git add .
git commit -m "Test changes"
git push -u origin feature/test

# Create PR (CodeRabbit will auto-review)
gh pr create --title "Test PR" --body "Testing CodeRabbit"
```

---

**Happy Coding!** 🚀
