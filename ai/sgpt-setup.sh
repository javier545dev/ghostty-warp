#!/bin/bash
# ShellGPT Setup Script
# Configures shell-gpt for AI-powered command suggestions

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"
ENV_EXAMPLE="$SCRIPT_DIR/.env.example"

echo "=== ShellGPT Setup ==="
echo ""

# Check if shell-gpt is installed
if ! command -v sgpt &> /dev/null; then
    echo "Installing shell-gpt..."
    pip3 install shell-gpt --user
    echo "shell-gpt installed successfully!"
else
    echo "shell-gpt is already installed."
fi

echo ""

# Check for .env file
if [ ! -f "$ENV_FILE" ]; then
    echo "No .env file found."
    echo ""
    echo "To use AI features, you need an API key."
    echo ""
    echo "Options:"
    echo "  1. OpenAI: https://platform.openai.com/api-keys"
    echo "  2. Local (Ollama): No API key needed - https://ollama.ai"
    echo ""

    read -p "Do you want to configure an API key now? (y/n): " configure

    if [ "$configure" = "y" ] || [ "$configure" = "Y" ]; then
        cp "$ENV_EXAMPLE" "$ENV_FILE"
        echo ""
        read -p "Enter your OpenAI API key (or press Enter to skip): " api_key

        if [ -n "$api_key" ]; then
            sed -i '' "s/OPENAI_API_KEY=/OPENAI_API_KEY=$api_key/" "$ENV_FILE"
            echo "API key saved to .env"
        else
            echo "Skipped. Edit ai/.env later to add your key."
        fi
    else
        echo "Skipped. Copy ai/.env.example to ai/.env when ready."
    fi
else
    echo ".env file exists. Loading configuration..."
fi

# Load environment if exists
if [ -f "$ENV_FILE" ]; then
    export $(grep -v '^#' "$ENV_FILE" | xargs)
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Usage:"
echo "  sgpt 'list files larger than 100MB'"
echo "  sgpt --shell 'find duplicate files'"
echo "  sgpt --code 'python function to parse JSON'"
echo ""
echo "Aliases (add to your shell):"
echo "  alias ai='sgpt'"
echo "  alias ais='sgpt --shell'"
echo "  alias aic='sgpt --code'"
echo ""
