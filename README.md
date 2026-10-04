# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Quick Start

Initialize and apply dotfiles on a new machine:

```bash
chezmoi init --apply <username_or_repo_url>
```

Or using the local repository directory:

```bash
chezmoi init --apply --source /path/to/dotfiles
# or run the helper script
./install-config.sh
```

## Useful chezmoi commands

- View managed target files: `chezmoi managed`
- See changes before applying: `chezmoi diff`
- Apply target state to home directory: `chezmoi apply`
- Update source state from destination: `chezmoi re-add`
