# custom entry
export PATH="$HOME/.local/bin/:$PATH"

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# https://linuxize.com/post/how-to-create-bash-aliases/
# Aliases
# alias alias_name="command_to_run"

# Update #NOTE: uncomment the line below in .bashrc
alias upd="sh ~/shell/000update-n-clean-automated.sh"
# Print my public IP #NOTE: uncomment the line below in .bashrc
alias myip='curl ipinfo.io/ip'

# save and close the file. Make the aliases available
# in your current session by typing:
# source ~/.bashrc
# in the terminal

# From now on, you will be able to update the system by typing
# 'upd' (of course, without the quotes) in the terminal
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# SSD TRIM
alias trim="sh ~/shell/ssd_trim.sh"
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# Stop 'appimagelaunche' background service.
alias appimg='pkill appimagelaunche'
# # # # # # # # # # # # # # # # # # # # # # # # # # #

# iBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
