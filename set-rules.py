import os
import sys
import shutil

# Paths to update
TARGET_PATHS = [
    # (Target File Path, IsGlobal)
    (r"C:\Users\Adnan\.gemini\config\AGENTS.md", True),
    (r"C:\Users\Adnan\Documents\antigravity\radiant-tesla\.agents\AGENTS.md", False),
    (r"C:\Users\Adnan\.gemini\antigravity\scratch\.agents\AGENTS.md", False)
]

# Source rule directory (using the global config as the source of truth)
SOURCE_DIR = r"C:\Users\Adnan\.gemini\config\.agents"

RULES_MAP = {
    "flash": "Gemini_3.5_Flash.md",
    "gemini35": "Gemini_3.5_Flash.md",
    "pro": "Gemini_3.1_Pro.md",
    "gemini31": "Gemini_3.1_Pro.md",
    "sonnet": "Claude_Sonnet_4.6.md",
    "opus": "Claude_Opus_4.6.md",
    "gpt": "GPT_OSS_120B.md",
    "oss": "GPT_OSS_120B.md"
}

ORDERED_MODELS = [
    ("Gemini 3.5 Flash", "Gemini_3.5_Flash.md"),
    ("Gemini 3.1 Pro", "Gemini_3.1_Pro.md"),
    ("Claude Sonnet 4.6", "Claude_Sonnet_4.6.md"),
    ("Claude Opus 4.6", "Claude_Opus_4.6.md"),
    ("GPT-OSS 120B", "GPT_OSS_120B.md")
]

def combine_all_rules(target_file):
    combined_content = [
        "# Custom System Directives\n",
        "The following instructions are model-specific. Please locate and follow the section corresponding to your model identity:\n"
    ]
    
    for model_name, filename in ORDERED_MODELS:
        filepath = os.path.join(SOURCE_DIR, filename)
        if os.path.exists(filepath):
            with open(filepath, "r", encoding="utf-8") as f:
                content = f.read()
            combined_content.append(f"\n## Directives for {model_name}\n")
            combined_content.append(content)
            combined_content.append("\n---\n")
        else:
            print(f"Warning: Source file '{filepath}' for {model_name} not found. Skipping...")
            
    try:
        os.makedirs(os.path.dirname(target_file), exist_ok=True)
        with open(target_file, "w", encoding="utf-8") as f:
            f.write("\n".join(combined_content))
        print(f"Successfully combined rules for ALL models into {target_file}")
    except Exception as e:
        print(f"Error combining rules for {target_file}: {e}")

def set_rules(model_key):
    if model_key == "all":
        print("Toggling rules to: Combined (ALL models)")
        for target_file, _ in TARGET_PATHS:
            combine_all_rules(target_file)
        return
        
    if model_key not in RULES_MAP:
        print(f"Error: Unknown model key '{model_key}'.")
        print("Available options: all, " + ", ".join(sorted(RULES_MAP.keys())))
        return
        
    src_filename = RULES_MAP[model_key]
    src_filepath = os.path.join(SOURCE_DIR, src_filename)
    
    if not os.path.exists(src_filepath):
        print(f"Error: Source file '{src_filepath}' does not exist in {SOURCE_DIR}.")
        return
        
    print(f"Toggling rules to: {src_filename}")
    for target_file, _ in TARGET_PATHS:
        try:
            os.makedirs(os.path.dirname(target_file), exist_ok=True)
            shutil.copyfile(src_filepath, target_file)
            print(f"Successfully updated rule file -> {target_file}")
        except Exception as e:
            print(f"Error writing to {target_file}: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python set-rules.py <model_name | all>")
        print("Example: python set-rules.py all")
        print("Available models: all, " + ", ".join(sorted(set(RULES_MAP.keys()))))
    else:
        set_rules(sys.argv[1].lower())
