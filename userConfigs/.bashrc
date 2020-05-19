alias ll='ls -lG'
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/serverless.bash ] && . /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/sls.bash ] && . /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/slss.bash ] && . /Users/jakubsvehla/Desktop/hm-design/business-card-pdf-lambda/node_modules/tabtab/.completions/slss.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion