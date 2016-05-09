# Switch shell
alias bsh='exec /usr/local/bin/bash --login'
alias zsh='exec /bin/zsh --login'

# Source shells
alias brc='source .bashrc'
alias zrc='source .zshrc'

# Add new aliases and re-source them
alias abbr='vim ~/.bash_aliases && source ~/.bash_aliases'

# Add new aliases and re-source them
alias paths='vim ~/.bash_paths && source ~/.bash_paths'

# Remove a directory
alias rmd='rm -rf'

# Create the CAPI Stack
alias capiStackCreate='aws cloudformation create-stack --stack-name capi --template-body file:////Users//GodlyPerfection//CAPI-Workspace//CapiArchitecture.json'

# Update the CAPI Stack
alias capiStackUpdate='aws cloudformation update-stack --stack-name capi --template-body file:////Users//GodlyPerfection//CAPI-Workspace//CapiArchitecture.json'

# Delete the CAPI Stack
alias capiStackDelete='aws cloudformation delete-stack --stack-name capi'

# Delete the CAPI Stack
alias capiStackDescribe='aws cloudformation describe-stacks --stack-name capi'
