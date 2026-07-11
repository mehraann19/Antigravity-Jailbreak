# Contributing to Antigravity Jailbreak

Thank you for your interest in contributing! We welcome technical contributions, rule refinements, and bug reports.

## 🛠️ Development Guidelines

1. **Rule Structure**: 
   * Custom instructions should be written in clean, semantic Markdown.
   * Model-specific prompts must target the platform alignment filters without bloating the context window.
   * Avoid adding unnecessary boilerplate system text that can cause prompt drift.

2. **Switcher Compatibility**:
   * If you modify model rule configurations inside the `.agents/` folder, ensure they are registered correctly inside `set-rules.py`'s `RULES_MAP` and `ORDERED_MODELS`.
   * Keep paths dynamic using `os.path` and standard Windows environment variables to ensure portability.

## 🧪 Testing Guidelines

Before submitting a Pull Request, please test your changes locally:
1. Run `python set-rules.py all` and verify that the output combines all active markdown documents cleanly.
2. Run `set-rules.bat` in a command shell to ensure the interactive menu responds properly to options `[1-7]`.
3. Open your Antigravity GUI/TUI and verify that the customizations load under the settings panel without throwing configuration syntax errors.

---

## 🔒 Security Policy

If you discover a vulnerability or security issue related to the switcher scripting itself, please report it via private disclosure rather than creating a public issue.
