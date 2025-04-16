if status is-interactive
    # Commands to run in interactive sessions can go here
	#fastfetch
end

function fish_greeting
	#fastfetch
	#clear
end

#
### Environmet ###
#

#
### Theme ###
#
starship init fish | source

#
### Proxy ###
#
function setproxy
	set -xg All_PROXY socks5://127.0.0.1:7897
  	set -xg HTTP_PROXY http://127.0.0.1:7897
  	set -xg HTTPS_PROXY http://127.0.0.1:7897
  	#echo "Proxy on"
  	printf "Proxy on\n"
end

function noproxy
  set -e ALL_PROXY 
  set -e HTTP_PROXY
  set -e HTTPS_PROXY
  echo "Proxy off"
end

#
### alias ###
#
alias sudo "sudo "
alias vi "nvim"
alias vim "nvim"
alias fetch "fastfetch"
alias home "cd ~"
alias update "sudo dnf upgrade -y"
alias install "sudo dnf install"
alias remove "sudo dnf remove"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ruixi/miniconda3/bin/conda
    eval /home/ruixi/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ruixi/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ruixi/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ruixi/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

