#!/bin/bash

# Install script for MyAITeam Claude Code subagents
# This script copies the agent files to the Claude Code agents directory

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# Header
echo "========================================"
echo "  MyAITeam Claude Code Agents Installer"
echo "========================================"
echo ""

# Check if running from the correct directory
if [ ! -f "gcp-cloud-architect.md" ] || [ ! -f "gcp-terraform-engineer.md" ] || [ ! -f "adk-python-engineer.md" ] || [ ! -f "gcp-python-sdk-engineer.md" ] || [ ! -f "gcp-nodejs-sdk-engineer.md" ] || [ ! -f "gcp-jenny.md" ] || [ ! -f "gcp-karen.md" ] || [ ! -f "gcp-task-validator.md" ] || [ ! -f "gcp-code-quality.md" ]; then
    print_error "Error: Agent files not found in current directory."
    echo "Please run this script from the MyAITeam repository root."
    exit 1
fi

# Define the Claude agents directory
CLAUDE_AGENTS_DIR="$HOME/.claude/agents"

# Check if Claude Code is installed by checking for the agents directory
if [ ! -d "$HOME/.claude" ]; then
    print_warning "Claude directory not found at ~/.claude"
    read -p "Do you want to create it? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        mkdir -p "$CLAUDE_AGENTS_DIR"
        print_status "Created Claude agents directory at $CLAUDE_AGENTS_DIR"
    else
        print_error "Installation cancelled."
        exit 1
    fi
elif [ ! -d "$CLAUDE_AGENTS_DIR" ]; then
    print_warning "Agents directory not found at $CLAUDE_AGENTS_DIR"
    read -p "Do you want to create it? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        mkdir -p "$CLAUDE_AGENTS_DIR"
        print_status "Created agents directory at $CLAUDE_AGENTS_DIR"
    else
        print_error "Installation cancelled."
        exit 1
    fi
fi

# List of agents to install
declare -a agents=(
    "gcp-cloud-architect.md"
    "gcp-terraform-engineer.md"
    "adk-python-engineer.md"
    "gcp-python-sdk-engineer.md"
    "gcp-nodejs-sdk-engineer.md"
    "gcp-jenny.md"
    "gcp-karen.md"
    "gcp-task-validator.md"
    "gcp-code-quality.md"
)

# Track installation status
installed_count=0
skipped_count=0
failed_count=0

echo "Installing agents to $CLAUDE_AGENTS_DIR..."
echo ""

# Install each agent
for agent in "${agents[@]}"; do
    agent_name="${agent%.md}"
    target_path="$CLAUDE_AGENTS_DIR/$agent"
    
    # Check if agent already exists
    if [ -f "$target_path" ]; then
        print_warning "Agent '$agent_name' already exists."
        read -p "  Overwrite? (y/n): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            print_warning "  Skipped '$agent_name'"
            ((skipped_count++))
            continue
        fi
    fi
    
    # Copy the agent file
    if cp "$agent" "$target_path" 2>/dev/null; then
        print_status "Installed '$agent_name'"
        ((installed_count++))
    else
        print_error "Failed to install '$agent_name'"
        ((failed_count++))
    fi
done

echo ""
echo "========================================"
echo "  Installation Summary"
echo "========================================"
echo ""

# Print summary
if [ $installed_count -gt 0 ]; then
    print_status "$installed_count agent(s) installed successfully"
fi

if [ $skipped_count -gt 0 ]; then
    print_warning "$skipped_count agent(s) skipped"
fi

if [ $failed_count -gt 0 ]; then
    print_error "$failed_count agent(s) failed to install"
fi

echo ""

# Print usage instructions if any agents were installed
if [ $installed_count -gt 0 ]; then
    echo "You can now use the following agents in Claude Code:"
    echo ""
    echo "Development Agents:"
    echo "  • GCP Cloud Architect:      /agent gcp-cloud-architect"
    echo "  • GCP Terraform Engineer:   /agent gcp-terraform-engineer"
    echo "  • ADK Python Engineer:      /agent adk-python-engineer"
    echo "  • GCP Python SDK Engineer:  /agent gcp-python-sdk-engineer"
    echo "  • GCP Node.js SDK Engineer: /agent gcp-nodejs-sdk-engineer"
    echo ""
    echo "Quality Assurance Agents:"
    echo "  • GCP Jenny (Verification): /agent gcp-jenny"
    echo "  • GCP Karen (Reality Check): /agent gcp-karen"
    echo "  • GCP Task Validator:       /agent gcp-task-validator"
    echo "  • GCP Code Quality:         /agent gcp-code-quality"
    echo ""
    echo "For more information, see the README.md file."
fi

# Exit with appropriate code
if [ $failed_count -gt 0 ]; then
    exit 1
else
    exit 0
fi