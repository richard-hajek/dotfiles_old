#!/usr/bin/env bash

echo "Sourcing ~/.profile"

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
source "${XDG_CONFIG_HOME}/env"
source "${XDG_CONFIG_HOME}/shells/profile"
