## My NeoVim Dev environment

Welcome to my NeoVim Development environment.
This repository includes:
 * NeoVim configuration equipped with plugins ready to develop.
 * Tmux configuration with theme package, colour and copy-paste settings
 * Several instructions for tools to work under Debian 11. These tools are:
	 * OhMyBash
	 * NodeJS
	 * Python3.10 and Pip3
	 * Ranger File Manager
	 * VIfm File Manager
	 * XAMPP
	 * MySQL clients as MyCLI, Valentina Studio and Beekeeper Studio
	 * Neofetch to deploy a fancy screen in your terminal
	 * Lazygit to manage git repositories
	 * Performance tools as Bashtop, Htop and Vtop
	 * Disk management as NCDU
 * Bashhrc aliases to execute some tools
#
The first step is go to master branch and check the files before to clone this repository. If you want to clone this project, I recommed you clone it outside of `~/.config` folder and after that, copy the `nvim` folder inside `~/.config`.
When you clone the project, I prefer start install all in this order:
 1. OhMyBash / OhMyPosh
 2. TMux
 3. XClip
 4. Ranger and VIfm
 5. Neovim
 6. Python3.10 and Pip3
 7. Neofetch
 8. Lazygit
 9. Htop
 10. Vtop
 11. Bashtop
 12. NCDU
 13. XAMPP
 14. MYCLI
 15. Beekeeper or Valentina Studio according your preference

> Note: I prefer Beekeeper than Valentina Studio

#
## OhMyBash / OhMyPosh setup instructions
Access to [https://ohmybash.nntoan.com/](https://ohmybash.nntoan.com/) or follow the instructions:
* Install curl:

    $ bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
or
* Install wget:

    $ bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
This line download and install OhMyBash automatically.
To deploy any theme, edit `.bashrc` and edit this line `OSH_THEME="[theme name]"`. You can view and choose one of these [themes](https://github.com/ohmybash/oh-my-bash/wiki/Themes).
#
The second option is install "OhMyPosh". OhMyPosh is a new environment more modern and with better themes than OhMyBash. This engine is felxible and is based on bash or zsh depends of your preference.
To install "OhMyPosh" you can follow the next url: [https://ohmyposh.dev/docs/installation/linux] or type  the following command in terminal:

    sudo  wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh  
    sudo  chmod +x /usr/local/bin/oh-my-posh
and download all themes typing this command:

    mkdir ~/.poshthemes  
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip  
    unzip ~/.poshthemes/themes.zip -d ~/.poshthemes  
    chmod u+rw ~/.poshthemes/*.omp.*  
    rm ~/.poshthemes/themes.zip
After download the engine and their themes, you can link "OhMyPosh" with bash or zsh following the next url [Linking OhMyPosh with bash or zsh](https://ohmyposh.dev/docs/installation/prompt).
#

## TMux setup instructions
* Debian install, type: `sudo apt install tmux`
* Archlinux install, type: `sudo pacman -S tmux`
After install, type this to run it: `tmux new-session -n [session_name]`, in `[session_name]` put a preferred name.
Check this [link](https://github.com/tmux/tmux/wiki/Installing) to check setup in different Linux distros.
To start with Tmux, follow the [getting started.](https://github.com/tmux/tmux/wiki/Getting-Started)
Follow this [keybindings](http://man.openbsd.org/OpenBSD-current/man1/tmux.1#DEFAULT_KEY_BINDINGS) to use the tool.

To config Tmux, check in your user directory if it exists `.tmux.conf`, but if this file not exists, you can create it with that name and edit it and paste this code:

    bind C-c run "tmux save-buffer - | xclip -i -sel clipboard"
    bind C-v run "tmux set-buffer "$(xclip -o -sel clipboard)"; tmux paste-buffer"
    
    set -g default-terminal "tmux-256color"
    set -ga terminal-overrides ",xterm-256color:Tc"
    set-option -g default-terminal "screen-256color"
    set -ga terminal-overrides ",*256col*:Tc"
    set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'
    set-environment -g COLORTERM "truecolor"
    
    # List of plugins
    set -g @plugin 'tmux-plugins/tpm'
    set -g @plugin 'tmux-plugins/tmux-sensible'
    set -g @plugin 'jimeh/tmux-themepack'
    
    #Theme
    set -g @themepack 'powerline/default/red'
    
    # Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
    run '~/.tmux/plugins/tpm/tpm'

To install a plugins package, follow this [link](https://github.com/tmux-plugins/tpm) or type: `https://github.com/tmux-plugins/tpm`.
By default, in this configuration, the selected theme is `Powerline/default/red`. by the other hand, if you want to change the theme, you can edit the line `set -g @themepack '[theme_name]'`, where theme_name is referenced by [list of themes](https://github.com/jimeh/tmux-themepack).
Save it and reset the session pressing this key sequence: `Ctrl+b & I` or restart the session.
#

#
> This doc will continue with detailed instructions.
> Until now, read the .txt files
