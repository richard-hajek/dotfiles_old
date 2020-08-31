echo Executing $(readlink -f "$0")

[ -z "${PROFILE_SOURCED}" ] && . "${HOME}/.profile"
[ -f "${BASHRC}" ] && . "${BASHRC}"
[ -f "${HOME}/.bashrc_" ] && . "${HOME}/.bashrc_"
