# start X at login
if status --is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
        exec startx
    end
end
source ~/.asdf/asdf.fish
set -x CHANGELOG_GITHUB_TOKEN (cat $HOME/github.token)
set -x TERM "xterm-256color"

# Pruning local git branches that were merged into master alredy
alias gbprune="git branch --merged master | grep -v 'master\$' | xargs git branch -d"

# Alias config

alias config='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
