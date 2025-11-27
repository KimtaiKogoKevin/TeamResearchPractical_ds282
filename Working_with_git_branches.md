# Git Workflow - Group A14

## 📌 Updated Workflow: We Push to Main

After discussing with tutors, we've decided to **push directly to main** since tutors will only review the main branch for grading.

**Important:** Be careful when pushing to avoid merge conflicts!

---

## Team Members

| Team Member | GitHub Username |
|-------------|-----------------|
| Daniel Terna Tule | `DanielTule` |
| Gideon Ganah | `GideonGanah` |
| Kelvin Amaadi Baani-Anoff | `KelvinAmadi` |
| Kevin Kogo | `KogoKevin` |
| Edosa Izevbizua | `Samuel` |

---

## Daily Workflow

### 1. Always Pull Before You Start
```bash
git checkout main
git pull
```
This gets the latest changes from the team.

### 2. Do Your Work
Edit your R scripts, create visualizations, etc.

### 3. Check What Changed
```bash
git status
```

### 4. Save and Push
```bash
git add .
git commit -m "Describe what you did"
git pull                    # Pull again to catch any new changes
git push                    # Push to main
```

---

## Example Workflow
```bash
git checkout main                          # Make sure you're on main
git pull                                   # Get latest changes
# ... do your work in R ...
git add .
git commit -m "Added histogram for happiness score"
git pull                                   # Check for updates before pushing
git push                                   # Push to main
```

---

## ⚠️ Avoiding Merge Conflicts

### Best Practices:
1. **Always pull before you start working**
2. **Pull again right before pushing**
3. **Work on different files when possible**
4. **Communicate with team** before editing the same file
5. **Push frequently** (don't wait days)
6. **Keep commits small and focused**

### If You Get a Merge Conflict:
```bash
git pull                    # Git will show which files conflict
# Open the conflicting files and fix them
git add .
git commit -m "Resolved merge conflict"
git push
```

---

## Communication Tips

Before working on a file someone else might be editing:
- Post in the group chat: "I'm working on analysis.R"
- Check who's working on what
- Coordinate to avoid conflicts

---

## Quick Reference
```bash
git pull                              # Get latest changes
git status                            # See what you changed
git add .                             # Stage all changes
git commit -m "Your message"          # Save changes
git push                              # Upload to GitHub
```

---

**Key Point:** Since tutors only check main, we all push there. Just be careful and communicate to avoid conflicts!