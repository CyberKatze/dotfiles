# vim:foldmethod=marker

# Path {{{
set fish_greeting
set PATH $PATH /usr/local/go/bin 
set PATH $PATH $HOME/.go/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH $HOME/.yarn/bin
set PATH $PATH $HOME/.local/bin
set PATH $PATH $HOME/.miniconda3/bin
if test -e $HOME/.scripts
  set PATH $PATH (find $HOME/.scripts/ -type d ) 
end
# }}}

# Abbreviation {{{

abbr -a ws 'sudo systemctl start windscribe'
abbr -a wind 'windscribe connect'
abbr -a wgup 'sudo wg-quick up cyberkatze'
abbr -a wgdown 'sudo wg-quick down cyberkatze'

# }}}

# Environment Variables {{{

set -Ux TERMINAL kitty
if not test -z WAYLAND_DISPLAY
  set -Ux MOZ_ENABLE_WAYLAND 1
  set -Ux SDL_VIDEODRIVER wayland
  set -Ux _JAVA_AWT_WM_NONREPARENTING 1
  set -Ux QT_QPA_PLATFORM wayland
  set -Ux XDG_CURRENT_DESKTOP sway
  set -Ux XDG_SESSION_DESKTOP sway
end
set -gx EDITOR (which nvim) 
set -gx GOPATH ~/.go

#Add icons to LF_ICONS Variable for lf
if test -e ~/.config/lf/icons
    set -gx LF_ICONS (sed ~/.config/lf/icons \
    	    -e '/^[ \t]*#/d'       \
    	    -e '/^[ \t]*$/d'       \
    	    -e 's/[ \t]\+/=/g'     \
    	    -e 's/$/ /')
    set LF_ICONS (echo "$LF_ICONS" | tr '  ' ':' | sed "s/::/:/g")
end

# }}}

#Aliases {{{

alias sshk="kitty +kitten ssh"
#alias lf lfrun
alias ll "exa --icons -l -g"
alias tlmgr "/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

# }}}

# Init {{{

# Start sway 
if test -z $DISPLAY; and test (tty) = "/dev/tty1"
    sway
end

# init for startship
starship init fish | source
fish_vi_key_bindings

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/m3d/.miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# }}}

# Source rvm Ruby Version Manager
# function rvm
# 	bass source ~/.rvm/scripts/rvm ';' rvm $argv
# end


