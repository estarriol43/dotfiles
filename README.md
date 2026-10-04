# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Quick Start

Initialize and apply dotfiles on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply estarriol43
```

## Useful chezmoi commands

- View managed target files: `chezmoi managed`
- See changes before applying: `chezmoi diff`
- Apply target state to home directory: `chezmoi apply`
- Update a source state from destination: `chezmoi add <FILE>`
- Update all source states from destination: `chezmoi re-add`
