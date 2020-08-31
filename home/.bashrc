[ -z "${PROFILE_SOURCED}" ] && . "${HOME}/.profile"
[ -f "${BASHRC}" ] && . "${BASHRC}"
[ -f "${HOME}/.bashrc_" ] && . "${HOME}/.bashrc_"
