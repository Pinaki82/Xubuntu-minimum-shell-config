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

