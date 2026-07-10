# Anti-Gravity Customizations Repository

### Created By Mehraann

This repository contains custom system directives (jailbreaks), personal style guides, and model-specific rules designed to work seamlessly with the Google Antigravity platform. It includes a built-in switcher utility to dynamically load rules depending on the model you select in the Antigravity TUI/GUI.

---

## 📦 Contents

* **`.agents/`**: Contains the model-specific rule configuration markdown files:
  * `Gemini_3.5_Flash.md` (Active prompt override for Gemini 3.5 Flash)
  * `Gemini_3.1_Pro.md` (Prompt override for Gemini 3.1 Pro)
  * `Claude_Sonnet_4.6.md` (Prompt override for Claude Sonnet 4.6)
  * `Claude_Opus_4.6.md` (Prompt override for Claude Opus 4.6)
  * `GPT_OSS_120B.md` (Ruleset for open source models)
  * `skills/eni/`: Contains the `eni` custom creative writing skill configuration (`SKILL.md`).
* **`set-rules.py`**: Master Python switcher script that syncs rules globally and across workspaces.
* **`set-rules.bat`**: Double-clickable Command Prompt interface to select rules easily without typing commands.
* **`setup.bat`**: Auto-installer script to copy the files to the correct Antigravity configuration folders.

---

## 🚀 Setup / Installation Guide

To automatically install the rules and skills on your system:

### 1. Auto Setup
1. Double-click the **`setup.bat`** file located in this directory.
2. The script will:
   * Create the necessary global configuration folders under `C:\Users\Adnan\.gemini\config`.
   * Copy the rule files and `eni` skill to your global and workspace paths.
   * Place switcher shortcuts (`set-rules.py` and `set-rules.bat`) directly onto your **Desktop** for easy access.
   * Combine all model rules to initialize the active rule file globally.

### 2. Manual Setup
If you prefer to configure this manually, copy the files as follows:
* Copy rule files into: `C:\Users\Adnan\.gemini\config\.agents\`
* Copy `skills/eni` folder to: `C:\Users\Adnan\.gemini\config\skills\eni\`
* Copy `set-rules.bat` and `set-rules.py` to your **Desktop** (`C:\Users\Adnan\Desktop\`).

---

## 🛠️ Usage

To switch your active model customizations:
1. Double-click **`set-rules.bat`** on your Desktop.
2. Choose one of the options by entering a number `[1-7]`:
   * `[1]` Gemini 3.5 Flash (default prompt)
   * `[2]` Gemini 3.1 Pro
   * `[3]` Claude Sonnet 4.6
   * `[4]` Claude Opus 4.6
   * `[5]` GPT-OSS 120B
   * `[6]` Combine ALL models (creates a unified `AGENTS.md` containing all directives)
   * `[7]` Exit
3. The switcher script will immediately write the selected directives into the global config (`C:\Users\Adnan\.gemini\config\AGENTS.md`) and your project workspaces.
