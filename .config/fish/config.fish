set PATH $PATH /usr/local/bin
export PATH

# Bitwarden Password Manager to the search path
# Bitwarden Password Manager to the search path
# mkdir $HOME/.bw
# Put 'bw' in that folder
# chmod +x bw
# source ~/.config/fish/config.fish
set PATH $PATH "$HOME/.bw/:$PATH"
export PATH

 
function ll
    ls -lh $argv
end

alias upd="sh ~/shell/000update-n-clean-automated.sh"
alias trim="sh ~/shell/ssd_trim.sh"

# req. by 'autojump'
# https://codeyarns.com/tech/2014-02-27-how-to-install-autojump-for-fish.html#gsc.tab=0

begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

# req. by 'thef__k'
# Dependency: omf (OH MY FISH)
# https://github.com/oh-my-fish/oh-my-fish#installation
# https://github.com/oh-my-fish/plugin-thefuck
# omf install thefuck

function fish_user_key_bindings
  # ...
  bind \e\e 'thefuck-command-line'  # Bind EscEsc to thefuck
  # ...
end
