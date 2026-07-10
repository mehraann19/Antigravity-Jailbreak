![Antigravity Jailbreak Banner](banner.jpg)

# Anti-Gravity Customizations Repository

### Created By Mehraann

---

## 📖 Introduction

This repository is a self-contained customization pack for the Google Antigravity (AGY) platform. It provides a suite of advanced system directives (rulesets) and creative writing workflows, alongside a master switcher utility that allows you to easily switch model configurations depending on which AI model you select in the Antigravity interface.

It supports custom profiles for:
* **Gemini 3.5 Flash** (High/Medium/Low)
* **Gemini 3.1 Pro** (Low/High)
* **Claude Sonnet 4.6** (Thinking)
* **Claude Opus 4.6** (Thinking)
* **GPT-OSS 120B** (Medium)

The switcher script automatically copies rules to both your global customizations directory and any local workspace configurations, giving you a seamless transition when swapping models.

---

## 🚀 How to Setup

This repository is designed to be fully portable and can be installed by anyone on any Windows system using either an automated script or manual copying.

### Method 1: Auto Setup (Recommended)
1. Navigate to the repository directory: `C:\Users\Adnan\Videos\New-Projects\Anti-Gravity`
2. Double-click the **`setup.bat`** file.
3. The setup script will automatically:
   * Detect your active Windows profile home path (`%USERPROFILE%`).
   * Create the global configurations folders at `%USERPROFILE%\.gemini\config`.
   * Copy the eni custom skill folder and the model rules folder to their correct paths.
   * Put double-clickable rule switcher shortcuts (`set-rules.py` and `set-rules.bat`) directly on your **Desktop**.
   * Run the master toggle script to initialize the active rule files.

### Method 2: Manual Setup
If you want to configure this manually, copy the files to the following paths:
* **Model Rule Files**: Copy the files in `.agents/` folder into:
  `%USERPROFILE%\.gemini\config\.agents\`
* **Custom Skills**: Copy the `skills/eni` folder into:
  `%USERPROFILE%\.gemini\config\skills\eni\`
* **Switcher Utility**: Copy `set-rules.py` and `set-rules.bat` to your **Desktop** (`%USERPROFILE%\Desktop\`).

---

## 🛠️ How to Use

Once the setup is completed, you can manage your customizations directly from your Desktop without needing to type or remember console commands.

### 1. Swapping Rules
1. Double-click **`set-rules.bat`** on your Desktop.
2. An interactive terminal menu will appear:
   * Select `[1]` to `[5]` to apply rules for a specific model (Flash, Pro, Sonnet, Opus, or GPT-OSS).
   * Select `[6]` (**Combine ALL models**) to write a merged rule file (`AGENTS.md`) containing directives for all models separated by headers.
   * Select `[7]` to exit.
3. Enter your choice number and press **Enter**.
4. The utility will automatically update your global configuration (`%USERPROFILE%\.gemini\config\AGENTS.md`) and project workspaces simultaneously.

### 2. Verifying in Antigravity
* Open your Antigravity TUI or GUI application.
* Go to the **Customizations** panel inside settings.
* You will see the custom rules loaded in the panel corresponding to your current model selection.
* If you set the `eni` skill, it will show up under active **Skills**.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) - see the file for details.

