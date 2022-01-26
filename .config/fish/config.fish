fish_vi_key_bindings

starship init fish | source

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

set PATH $HOME/.local/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/usr/local/Caskroom/miniconda/base/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/Users/antonbossenbroek/micromamba"
eval "/usr/local/Caskroom/miniconda/base/bin/micromamba" shell hook --shell fish --prefix "/Users/antonbossenbroek/micromamba" | source
# <<< mamba initialize <<<
