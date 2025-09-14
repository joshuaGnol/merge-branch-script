# Windows Script: Automate Merging Branch B Back into Branch A

This script is designed to simplify and automate the common Git workflow of merging one branch (e.g., a feature or hotfix branch) back into another (typically the main or development branch).

In many projects, developers frequently need to merge changes from **branch B** into **branch A** to ensure that the main branch stays up to date with the latest work. Normally, this requires running multiple Git commands manually in the correct order:

1. Switch to the target branch (**A**).
2. Pull the latest changes to avoid conflicts.
3. Merge the source branch (**B**).
4. Resolve conflicts if needed.
5. Push the updated branch back to the remote repository.

Doing this by hand every time can be repetitive and error-prone. This Windows batch script automates those steps, ensuring a consistent and reliable process.

---

## ✨ Features

- **Automates the workflow** of merging branch B into branch A.  
- **Checks repository validity** before running.  
- **Fetches and pulls** the latest updates before merging to reduce conflicts.  
- **Handles merge conflicts** gracefully by stopping and allowing manual resolution.  
- **Pushes merged changes** back to the remote branch automatically.  

---
