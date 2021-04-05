this number after -n is different in macbook pro 2012, the number is from "sysctl -a | grep kern.maxfiles"
ulimit -n 24576
ulimit -u 2048

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Register all aliases
for aliasToSource in "$DOTFILES_PATH/terminal/_aliases/"*; do source "$aliasToSource"; done
# Register all exports
for exportToSource in "$DOTFILES_PATH/terminal/_exports/"*; do source "$exportToSource"; done
# Register all functions
for functionToSource in "$DOTFILES_PATH/terminal/_functions/"*; do source "$functionToSource"; done
