# List available recipes
default:
    @just --list

# Run all checks
check: lint check-typos

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

# Validate colorscheme loads without errors
validate:
    nvim --headless -u NONE -c "set rtp+=." -c "lua require('earthtone').load()" -c "qa"
