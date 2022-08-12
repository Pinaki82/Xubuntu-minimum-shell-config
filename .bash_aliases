# custom entry
export PATH="$HOME/.local/bin/:$PATH"

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# https://linuxize.com/post/how-to-create-bash-aliases/
# Aliases
# alias alias_name="command_to_run"

# Update #NOTE: uncomment the line below in .bashrc
# Update using 'apt'.
alias upda="sh ~/shell/000update-n-clean-automated.sh"
# Update using 'nala'.
alias updn="sh ~/shell/000update-n-clean-automated-nala.sh"
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

# Bitwarden Password Manager to the search path
# mkdir $HOME/.bw
# Put 'bw' in that folder
# chmod +x bw
# source ~/.bash_aliases
export PATH="$HOME/.bw/:$PATH"

# Weather: Type 'weather' to
#    see the weather report in a
#    terminal emulator.
alias weather='curl wttr.in'

# Arduino-CLI
export PATH="$HOME/bin/:$PATH"
# arduino-cli completion bash > arduino-cli.sh
source ~/bin/arduino-cli.sh

# PlatformIO Core CLI
# ln -s ~/.platformio/penv/bin/platformio ~/.local/bin/platformio
# ln -s ~/.platformio/penv/bin/pio ~/.local/bin/pio
# ln -s ~/.platformio/penv/bin/piodebuggdb ~/.local/bin/piodebuggdb
export PATH="$HOME/.platformio/penv/bin/:$PATH"