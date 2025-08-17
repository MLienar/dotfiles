# Determine own path if ZDOTDIR isn't set or home symlink exists
if [[ -z "${ZDOTDIR}" || -L "${HOME}/.zshenv" ]]; then
    local homezshenv="${HOME}/.zshenv"
    ZDOTDIR="${homezshenv:A:h}"
fi
# DOTFILES dir is parent to ZDOTDIR
export DOTFILES="${ZDOTDIR:h}"

# Disable global zsh configuration
# We're doing all configuration ourselves
unsetopt GLOBAL_RCS

