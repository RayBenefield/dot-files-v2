# Switch shell
alias bsh='exec /usr/local/bin/bash --login'
alias zsh='exec /bin/zsh --login'

# Source shells
alias brc='source .bashrc'
alias zrc='source .zshrc'

# Add new aliases and re-source them
alias abbr='vim ~/public-dot-files/.bash_aliases && source ~/.bash_aliases'

# Add new aliases and re-source them
alias paths='vim ~/.bash_paths && source ~/.bash_paths'

# Remove a directory
alias rmd='rm -rf'

# Create the CAPI Stack
alias capiCreateStack='aws cloudformation create-stack --stack-name capi --template-body file:////Users//GodlyPerfection//CAPI-Workspace//CapiArchitecture.json --capabilities CAPABILITY_IAM'

# Update the CAPI Stack
alias capiUpdateStack='aws cloudformation update-stack --stack-name capi --template-body file:////Users//GodlyPerfection//CAPI-Workspace//CapiArchitecture.json --capabilities CAPABILITY_IAM'

# Delete the CAPI Stack
alias capiDeleteStack='aws cloudformation delete-stack --stack-name capi'

# Delete the CAPI Stack
alias capiDescribeStack='aws cloudformation describe-stacks --stack-name capi'

# Backup pyramid.
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."
alias ......="cd ../../../../../.."
alias .......="cd ../../../../../../.."
alias ........="cd ../../../../../../../.."
alias .........="cd ../../../../../../../../.."
alias ..........="cd ../../../../../../../../../.."

# Switch directory
alias f='cd -'
