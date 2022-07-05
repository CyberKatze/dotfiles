set fish_greeting
set PATH $PATH /usr/local/go/bin 
set PATH $PATH $HOME/.go/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH $HOME/.yarn/bin
set PATH $PATH $HOME/.local/bin
if test -e $HOME/.scripts
  set PATH $PATH (find $HOME/.scripts/ -type d ) 
end

# Abbreviation
abbr -a ws 'sudo systemctl start windscribe'
abbr -a wind 'windscribe connect'
abbr -a wgup 'sudo wg-quick up cyberkatze'
abbr -a wgdown 'sudo wg-quick down cyberkatze'


# Enviroment Variables
set -Ux TERMINAL kitty
set -Ux RANGER_LOAD_DEFAULT_RC FALSE
set -gx EDITOR (which nvim) 
set -gx GOPATH ~/.go
#-----------------------------------------------------
#Aliases
#-------------------------------------------------------
alias sshk="kitty +kitten ssh"
#alias lf lfrun
alias color "colorscript random"
alias ll "exa --icons -l -g"
alias tlmgr "/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

#--------------------------------------------------------
#Function
#--------------------------------------------------------
# load nvm
load_nvm > /dev/stderr

# Source rvm Ruby Version Manager
function rvm
	bass source ~/.rvm/scripts/rvm ';' rvm $argv
end

# Add icons to LF_ICONS Variable for lf
if test -e ~/.config/lf/icons
    set -gx LF_ICONS (sed ~/.config/lf/icons \
    	    -e '/^[ \t]*#/d'       \
    	    -e '/^[ \t]*$/d'       \
    	    -e 's/[ \t]\+/=/g'     \
    	    -e 's/$/ /')
    set LF_ICONS (echo "$LF_ICONS" | tr '  ' ':' | sed "s/::/:/g")
end

# Run tmux on Start up
#if status is-interactive
#and not set -q TMUX
#	set -g TMUX tmux new-session -d -s base
#    eval $TMUX
#    tmux attach-session -d -t bas
#end

# init for startship
starship init fish | source
fish_vi_key_bindings
