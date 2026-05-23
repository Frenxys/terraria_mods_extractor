# Terraria Workshop Mod Extractor

This script is designed to help you extract the latest version of each mod installed from the Steam Workshop for Terraria. It scans your local Steam Workshop content folder, finds the most recent version (by folder name) of each mod, and copies all `.tmod` files from those folders to a destination of your choice (by default, your Desktop in a folder named `extractedmods`).

## Purpose
- Quickly gather the latest versions of all your installed Terraria Workshop mods.
- Prepare mods for use on a dedicated server or for sharing with others.
- Avoid manual searching and copying of mod files.

## How it works
1. The script scans the Steam Workshop content directory for Terraria mods (default: `C:\Program Files (x86)\Steam\steamapps\workshop\content\1281930`).
2. For each mod, it identifies all version subfolders and selects the one with the highest version name (e.g., `2025.7` is newer than `2025.6`).
3. It copies all `.tmod` files from the latest version folder to a destination directory (by default, `Desktop\extractedmods`).
4. The script prints out which versions were found and which one was selected for each mod.

## Usage
1. Place the script (`extract_mods.ps1`) anywhere you like.
2. Open PowerShell and navigate to the script's folder.
3. Run the script with:
   ```powershell
   powershell -ExecutionPolicy Bypass -File extract_mods.ps1
   ```
4. The extracted `.tmod` files will appear in the `Desktop\extractedmods` folder by default.

## Customization
- You can change the source or destination folder by editing the variables at the top of the script.
- The script is user-agnostic and works for any Windows user account.

## Requirements
- Windows
- PowerShell
- Terraria mods installed via Steam Workshop

---
Created for easy mod extraction and server setup.
