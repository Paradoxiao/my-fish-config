# set -gx LANG zh_CN.UTF-8
set -gx LC_ALL zh_CN.UTF-8
set -gx XMODIFIERS @im=fcitx
set -gx XIM fcitx5
set -gx XIM_PROGRAM fcitx5
set -gx SDL_IM_MODULE fcitx5
set -gx GLFW_IM_MODULE fcitx5
# set -gx GTK_IM_MODULE fcitx
# set -gx QT_IM_MODULE fcitx
set -gx EDITOR nvim
set -gx TLDR_LANGUAGE zh
set -gx RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set -gx RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -gxa PATH $HOME/.local/bin
#set -gx OLLAMA_MODELS /home/paradoxiao/Win/Pro/AI/Ollama/.models
