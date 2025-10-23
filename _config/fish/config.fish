if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
end
export PATH="$HOME/.local/bin:$PATH"
