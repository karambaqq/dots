
#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(pacaur -k | wc -l)

check=$((pac + aur))
#if [[ "$check" != "0" ]]
#then
echo "$pac %{F#54BB6F}%{F#54BB6F} $aur"
#fi
