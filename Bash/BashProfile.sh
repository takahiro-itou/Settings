
if [ "x${MYBASH_ECHO_LOADING_BASHPROFILE}y" = "xTRUEy" ] ; then
  echo  "Start  Loading : ${HOME}/Settings/Bash/BashProfile.sh"  1>&2
  echo  "Host : $(hostname)"  1>&2
fi

if [ -f ~/Settings/Bash/Bashrc.sh ] ; then
  source  ~/Settings/Bash/Bashrc.sh
fi

if [ -f ~/LocalSettings/Bash/BashProfileLocal ] ; then
  source  ~/LocalSettings/Bash/BashProfileLocal
fi

if [ "x${MYBASH_ECHO_LOADING_BASHPROFILE}y" = "xTRUEy" ] ; then
  echo  "Loading  ${HOME}/Settings/Bash/BashProfile.sh : OK"  1>&2
fi

