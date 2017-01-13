PATH=./node_modules/.bin/:./:$PATH

# Switch shell
alias bsh='exec /usr/local/bin/bash --login'
alias zsh='exec /bin/zsh --login'

# Eclim startup
alias eclim='${ECLIPSE_HOME}/eclimd'

# Switch to using github cli
alias git='hub'

# Source shells
alias brc="source $HOME/.bashrc"
alias zrc="source $HOME/.zshrc"

# Use a different screen version
alias screen='/usr/local/bin/screen'

# Add new aliases and re-source them
alias abbr="vim $HOME/.bash_aliases && source $HOME/.bash_aliases"

# Add new aliases and re-source them
alias paths="vim $HOME/.bash_paths && source $HOME/.bash_paths"

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

# Find text in path
function wherein () {
    for i in $(find "$1" -type f 2> /dev/null);
    do
        if grep --color=auto -inI "$2" "$i" 2> /dev/null; then
            echo -e "\033[0;32mFound in: $i \033[0m\n";
        fi;
    done
}

# Look at documentation for NPM module
function docs() {
    vim $dev/cache-local-npm/node_modules/$1/readme.md
}

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}
