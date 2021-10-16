function fishfetch --description "A command-line system information tool written in fish"
    read name _ linux_version_string _ < /proc/version
    set kernel (string split -r -m1 \- $linux_version_string)[1]
    readenv /etc/os-release
    set pretty_host (prompt_hostname)
    set shell (string split / $SHELL)[-1]

    printf '%s\n' "
  os ~ $NAME
  sh ~ $shell $FISH_VERSION
  de ~ $XDG_CURRENT_DESKTOP
  kn ~ $name $kernel
        . 
   .>   )\;`a__
  (  _ _)/ /-.\" ~~
   `( )_ )/
    <_  <_     Welcome, $USER@$pretty_host
"
end
