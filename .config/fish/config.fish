# Fish Greeting removal
set -U fish_greeting


# EXA Config
if type -q exa
	alias ll "exa -l -g --icons"
	alias lla "ll -a"
end


#REACT NATIVE
set -Ux ANDROID_HOME /Users/pdr/Library/Android/Sdk
set -gx PATH /Users/pdr/Library/Android/sdk/emulator $PATH
set -gx PATH /Users/pdr/Library/Android/sdk/tools $PATH
set -gx PATH /Users/pdr/Library/Android/sdk/tools/bin $PATH
set -gx PATH /Users/pdr/Library/Android/sdk/platform-tools $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end
