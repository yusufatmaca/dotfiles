if status is-interactive

	set -g fish_greeting
	
	zoxide init fish | source
	
	alias ls="eza --icons"
	alias ll="eza -lah --icons --git"
	alias la="eza -a --icons"
	alias tree="eza --tree --icons"

	alias cat="bat"

	alias rm="rm -i"
	alias cp="cp -i"
	alias mv="mv -i"

	alias c="clear"

	alias nvcc15 'nvcc -arch=sm_86 -ccbin g++-15'
	set -gx PATH /usr/local/cuda/bin $PATH
	set -gx LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH

	set -gx CUGRAPH_HOME $HOME/projects/cugraph/


end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/yatmaca/miniforge3/bin/conda
    eval /home/yatmaca/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/yatmaca/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/yatmaca/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/yatmaca/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE "/home/yatmaca/miniforge3/bin/mamba"
set -gx MAMBA_ROOT_PREFIX "/home/yatmaca/miniforge3"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
