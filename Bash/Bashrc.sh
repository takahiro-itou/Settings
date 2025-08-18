
if [ "x${MYBASH_ECHO_LOADING_BASHRC}y" = "xTRUEy" ] ; then
  echo  "Start  Loading : ${HOME}/Settings/Bash/Bashrc.sh"  1>&2
  echo  "Host : $(hostname)"  1>&2
fi

for  file  in  /etc/bashrc  ; do
  if [ -f ${file} ] ; then
    source  ${file}
  fi
done

for  file  in  Function.sh  SetEnvs.sh  Prompt.sh  BashAlias.sh  ; do
  if [ -f ~/Settings/Bash/${file} ] ; then
    source  ~/Settings/Bash/${file}
  fi
done

if [ -f ~/LocalSettings/Bash/BashrcLocal ] ; then
  source  ~/LocalSettings/Bash/BashrcLocal
fi

if [ "x${MYBASH_ECHO_LOADING_BASHRC}y" = "xTRUEy" ] ; then
  echo  "Loading  ${HOME}/Settings/Bash/Bashrc.sh : OK"  1>&2
fi

