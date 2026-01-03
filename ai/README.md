# AI Command Suggestions

Ghostty Warp integrates AI-powered command suggestions using [ShellGPT](https://github.com/TheR1D/shell_gpt), giving you natural language to terminal command translation.

## Quick Start

```bash
# Run setup
./ai/sgpt-setup.sh

# Or install manually
pip3 install shell-gpt
```

## Configuration

1. Copy the example environment file:
   ```bash
   cp ai/.env.example ai/.env
   ```

2. Add your API key to `ai/.env`:
   ```bash
   OPENAI_API_KEY=sk-your-key-here
   ```

### Using Local Models (Ollama)

For privacy-first, offline AI:

```bash
# Install Ollama
brew install ollama

# Pull a model
ollama pull codellama

# Configure shell-gpt for local use
export OPENAI_API_HOST=http://localhost:11434
```

## Usage

### Basic Commands

```bash
# Natural language to command
sgpt "list all files larger than 100MB"

# Shell mode (executes immediately)
sgpt --shell "find duplicate files in current directory"

# Code generation
sgpt --code "python script to parse CSV"
```

### Aliases

Add these to your `~/.zshrc`:

```bash
# AI command suggestions
alias ai='sgpt'
alias ais='sgpt --shell'
alias aic='sgpt --code'
```

Then use:
```bash
ai "how do I compress a folder"
ais "kill process on port 3000"
aic "bash function to backup files"
```

## Privacy

- **BYOK (Bring Your Own Key)**: You control your API key
- **Local option**: Use Ollama for fully offline AI
- **No telemetry**: Your commands stay on your machine
- **API keys never in repo**: Use `.env` file (gitignored)

## Comparison with Warp AI

| Feature | Warp | Ghostty + ShellGPT |
|---------|------|-------------------|
| Natural language commands | Yes | Yes |
| Code generation | Yes | Yes |
| Local models | No | Yes (Ollama) |
| BYOK | No | Yes |
| Privacy | Cloud-based | Local or BYOK |
| Cost | Subscription | Pay-per-use or Free (Ollama) |

## Troubleshooting

### "API key not found"
```bash
# Check your .env file exists
cat ai/.env

# Or export directly
export OPENAI_API_KEY=sk-your-key
```

### "Command not found: sgpt"
```bash
# Reinstall
pip3 install shell-gpt --user

# Add to PATH if needed
export PATH="$HOME/.local/bin:$PATH"
```
