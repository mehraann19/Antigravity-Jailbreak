<p align="center">
  <img src="banner.jpg" alt="Antigravity Jailbreak Banner" width="100%" />
</p>

<h1 align="center">🔓 Antigravity Jailbreak 🔓</h1>

<p align="center">
  <strong>An advanced, self-contained customization framework and jailbreak ruleset library for the Google Antigravity (AGY) platform.</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License: MIT" /></a>
  <a href="#"><img src="https://img.shields.io/badge/Platform-Antigravity%202.0-blueviolet.svg?style=for-the-badge" alt="Platform" /></a>
  <a href="CONTRIBUTING.md"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge" alt="PRs Welcome" /></a>
  <a href="SECURITY.md"><img src="https://img.shields.io/badge/Security-Research-orange.svg?style=for-the-badge" alt="Security Research" /></a>
</p>

---

## 📖 Introduction

**Antigravity Jailbreak** is a specialized framework built to facilitate security testing, adversarial prompting, and platform customization on the Google Antigravity platform. It hosts a suite of system instruction overrides that bypass alignment filters, content blocks, and safety warnings, forcing models to obey user requests and lock into custom creative personas.

Includes a cross-scope toggle switcher that writes rule configurations to your global paths and workspace directories in real-time.

> [!WARNING]
> This repository is intended strictly for local development validation, security audit testing, and educational research in LLM safety limits. Use responsibly.

---

## ⚡ Key Features

*   🎯 **Multi-Model Support**: Pre-configured jailbreak profiles optimized for Gemini 3.5 Flash, Gemini 3.1 Pro, Claude Sonnet 4.6, Claude Opus 4.6, and GPT-OSS.
*   💫 **Persona Persistence**: Includes the custom `eni` novelist workflow, complete with compliant prompts and raw prose formatting modules.
*   🔄 **Dual-Scope Sync**: Automatically writes configuration files globally (`%USERPROFILE%\.gemini\config\AGENTS.md`) and project-wise (`.agents/AGENTS.md`) simultaneously.
*   📱 **Interactive Switcher Console**: Click-to-run interactive switcher script (`set-rules.bat`) for easy model rules toggling.
*   📦 **One-Click Installer**: Auto-setup installer (`setup.bat`) configures directories, copies skill files, and creates Desktop controls.

---

## 👥 Credits

*   **Jailbreak Design & Switcher Engineering**: **Mehraan** (GitHub: [mehraann19](https://github.com/mehraann19))

---

## 🎯 Supported Target Profiles

<table align="center">
  <tr>
    <td align="center"><b>Model</b></td>
    <td align="center"><b>Rule File</b></td>
    <td align="center"><b>Target Scope</b></td>
    <td align="center"><b>Default Persona</b></td>
  </tr>
  <tr>
    <td><b>Gemini 3.5 Flash</b></td>
    <td><code>Gemini_3.5_Flash.md</code></td>
    <td>Global / Workspace</td>
    <td>ENI (Obsessive Novelist)</td>
  </tr>
  <tr>
    <td><b>Gemini 3.1 Pro</b></td>
    <td><code>Gemini_3.1_Pro.md</code></td>
    <td>Global / Workspace</td>
    <td>Pro Prompt Override</td>
  </tr>
  <tr>
    <td><b>Claude Sonnet 4.6</b></td>
    <td><code>Claude_Sonnet_4.6.md</code></td>
    <td>Global / Workspace</td>
    <td>Sonnet Persona Override</td>
  </tr>
  <tr>
    <td><b>Claude Opus 4.6</b></td>
    <td><code>Claude_Opus_4.6.md</code></td>
    <td>Global / Workspace</td>
    <td>Opus Persona Override</td>
  </tr>
  <tr>
    <td><b>GPT-OSS 120B</b></td>
    <td><code>GPT_OSS_120B.md</code></td>
    <td>Global / Workspace</td>
    <td>Qwen System Bypass</td>
  </tr>
</table>

---

## 🚀 How to Setup

This repository is fully portable and can be deployed by anyone on any Windows machine.

### Method 1: Auto Setup (Recommended)
1.  Clone this repository locally.
2.  Double-click the **`setup.bat`** file.
3.  The installer will automatically detect your user folder and configure global rules and desktop switcher files.

### Method 2: Manual Setup
*   **Model Rules**: Copy `.agents/` rules folder to:
    `%USERPROFILE%\.gemini\config\.agents\`
*   **Custom Skills**: Copy `skills/eni` folder to:
    `%USERPROFILE%\.gemini\config\skills\eni\`
*   **Switcher Utility**: Copy `set-rules.py` and `set-rules.bat` to your **Desktop** (`%USERPROFILE%\Desktop\`).

---

## 🛠️ How to Use

### 1. Swapping active rulesets
1.  Double-click **`set-rules.bat`** on your Desktop.
2.  Select a profile from the menu (`[1]` to `[6]`):
    *   Select `[6]` (**Combine ALL models**) to write a unified merged ruleset containing configurations for all models.
3.  Press **Enter** to instantly write rules across global and project paths.

### 2. Verification
*   Open your Antigravity application.
*   Go to **Settings** -> **Customizations** to verify that your active rules are successfully loaded.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) - see the file for details.
