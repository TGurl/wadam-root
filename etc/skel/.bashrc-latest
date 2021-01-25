#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#export PS1="[<\e[35m\>\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]] \w\n$> "
#export PS1="<\[\e[35m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]> \W\n$ "
export PS1="[\[\e[35m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]] \w\n\\$ "

export PATH=$HOME/.bin:$PATH

alias i3config="vim ~/.config/i3/config"

# The rest are copied from Arcolinux Bashrc

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
# clear screen and list
alias cls='clear & ls -a'

#update mlocate database
alias updatedb="sudo updatedb"

#fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'

# just to catch wrong editor
alias vim='vim'
alias nvim='vim'
#alias nano='vim'

#colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#system management

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#imageviewer
alias eom="geeqie"

#set background
alias setbg="feh --bg-scale $1"
#alias setrbg="feh --bg-scale -z /data/pictures/wallpapers"
#alias setrpbg="feh --bg-scale -z /data/pictures/wallpapers/pr0n"
#alias setmcbg="feh --bg-scale -z /data/pictures/wallpapers/TGurl"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

#Aliases for software management
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

#yay as aur hlper - updates everything
alias upall="yay -Syu --noconfirm"

#ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
alias fixpng="find . -type f -name '*.png' -exec convert{} -strip {} \;"

#add new fonts
alias fc="sudo fc-cache -fv && fc-cache -fv"

#hardware info --short
alias hw="hwinfo --short"

#skip integrity check
alias yayskip='yay -S --mflags --skipinteg'
alias trizenskip='trizen -S --skipinteg'

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#get fastest mirrors in your neighbourhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

#shopt
#shopt -s autocd # change to named directory
#shopt -s cdspell # autocorrects cd misspellings
#shopt -s cmdhist # save multi-line commands in history as single line
#shopt -s gotglob
#shopt -s histappend # do not overwrite history
#shopt -s expand_aliases # expand aliases

#youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac"
alias yta-best="youtube-dl --extract-audio --audio-format best"
alias yta-flac="youtube-dl --extract-audio --audio-format flac"
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a"
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3"
alias yta-opus="youtube-dl --extract-audio --audio-format opus"
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis"
alias yta-wav="youtube-dl --extract-audio --audio-format wav"

alias ytv-best="youtube-dl -f bestvideo+bestaudio"
alias ytv="ytv-best"

#recent installed packages
alias rip="expac --timefmt='%Y-%m-%d' '%l\t\%n %v' | sort | tail -100"

#cleanup orphaned packages
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#ufetch
#neofetch
