# README

Note - treesitter requires the tree-sitter-cli to be installed or it won't work.

Use `stow` to setup symlinks

```
stow -R -t "$HOME" nvim tmux

stow -t ~ nvim
stow -t ~ tmux

stow -t "$HOME" nvim
stow -t "$HOME" tmux
```

