#!/usr/bin/env bash

echo "Sourcing ~/.profile"
export PROFILE_SOURCED=1

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
source "${XDG_CONFIG_HOME}/env"

export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export KDEHOME="$XDG_CONFIG_HOME/kde"
export MATHEMATICA_USERBASE="$XDG_CONFIG_HOME/mathematica"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export KERAS_HOME="$XDG_DATA_HOME/keras"
export KAGGLE_CONFIG_DIR="$XDG_CONFIG_HOME/kaggle"

export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export DOT_SAGE="$XDG_DATA_HOME"/sage
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME"/vagrant/aliases
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

export LESSHISTFILE=-

export IDEA_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/idea.properties"
export CLION_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/clion.properties"
export APPCODE_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/appcode.properties"
export PYCHARM_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/pycharm.properties"
export DATAGRIP_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/datagrip.properties"
export STUDIO_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/studio.properties"
export WEBIDE_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/webide.properties"
export PHPSTORM_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/phpstorm.properties"
export GOLAND_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/goland.properties"
export RIDER_PROPERTIES="$XDG_CONFIG_HOME/JetBrains/rider.properties"

export CONDA_ROOT="$XDG_CONFIG_HOME/conda"
export CONDA_PREFIX="$XDG_CONFIG_HOME/conda/envs/default"

source `which user-path-gen` # Add ~/.local/bin/**/ to path

[ -z $SHELL_SOURCED ] && [ -f "~/.$(basename ${SHELL})rc" ] && source "~/.$(basename ${SHELL})rc" 
