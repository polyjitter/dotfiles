if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fish Variables
set fish_greeting
set fish_escape_delay_ms 300

# Other Variables
set -x FZF_DEFAULT_OPTS "--layout=reverse --inline-info --height=80% --border"

# Aliases
function gedit -d "Opens a file in Text Editor."
    flatpak run org.gnome.TextEditor $argv
end

function code -d "Opens a file or folder in Visual Studio Code."
    toolbox run ~/.local/bin/code $argv
end

function commit -d "Add all to a git repository and commit."
    git add -A
    git commit
end

# Starship
starship init fish | source
