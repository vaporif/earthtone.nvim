# List available recipes
default:
    @just --list

# Run all checks
# Run all checks (local, requires all tools)
check: lint check-typos lint-actions

# Run CI checks (no actionlint, handled by dedicated action)
check-ci: lint check-typos

# Lint lua with selene and stylua
lint:
    selene lua colors
    stylua --check .

# Format lua files
fmt:
    stylua .

# Check for typos
check-typos:
    typos

# Lint GitHub Actions workflows
lint-actions:
    actionlint

# Enable git hooks
setup-hooks:
    git config core.hooksPath .githooks

# Validate colorscheme loads without errors
validate:
    nvim --headless -u NONE -c "set rtp+=." -c "lua require('earthtone').load()" -c "qa"
