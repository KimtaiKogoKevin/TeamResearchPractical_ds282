# Git Workflow - Group A14

## 🚨 RULE #1: NEVER PUSH TO MAIN

**Always work on YOUR branch!**

---

## Team Branches

| Team Member | Your Branch |
|-------------|-------------|
| Daniel Terna Tule | `DanielTule` |
| Gideon Ganah | `GideonGanah` |
| Kelvin Amaadi Baani-Anoff | `KelvinAmadi` |
| Kevin Kogo | `KogoKevin` |
| Edosa Izevbizua | `Samuel` |

---

## Daily Workflow

### 1. Switch to YOUR Branch
```bash
git checkout <YourBranchName>
```

**Examples:**
```bash
git checkout DanielTule    # Daniel
git checkout GideonGanah   # Gideon
git checkout KelvinAmadi   # Kelvin
git checkout KogoKevin     # Kevin
git checkout Samuel        # Edosa
```

### 2. Check You're on the Right Branch
```bash
git branch
```
Look for the `*` - it should be next to YOUR branch name, **NOT main**.

### 3. Do Your Work
Edit your R scripts, create visualizations, etc.

### 4. Save and Push
```bash
git add .
git commit -m "What you did"
git push
```

---

## Example: Daniel's Workflow

```bash
git checkout DanielTule              # Switch to my branch
git branch                           # Check: * DanielTule ✓
# ... do work in R ...
git add .
git commit -m "Added summary statistics"
git push                             # Pushes to DanielTule branch
```

---



###  DON'T DO THIS:
```bash
git checkout main        # Working on main!
git push                 # Pushing to main!
```

### DO THIS:
```bash
git checkout DanielTule  # Work on YOUR branch
git push                 # Push to YOUR branch
```

---

## Quick Check
Before pushing, always run:
```bash
git branch
```
If you see `* main` → **STOP! Switch to your branch first!**

---

## Merging to Main

When your code is ready:
1. Go to GitHub
2. Create a Pull Request
3. Team reviews
4. Merge to main branch for final presentation

---

**Remember: YOUR BRANCH → NOT MAIN** 