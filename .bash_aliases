PATH=./node_modules/.bin/:./:$PATH

# Switch shell
alias bsh='exec /usr/local/bin/bash --login'
alias zsh='exec /bin/zsh --login'

# Switch to using github cli
alias git='hub'

# Source shells
alias brc="source $HOME/.bashrc"
alias zrc="source $HOME/.zshrc"

# Use a different screen version
alias screen='/usr/local/bin/screen'

# Redirect to NeoVim
alias vim='nvim'

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
function wherein () 
{ 
    for i in $(find "$1" -type f 2> /dev/null);
    do
        if grep --color=auto -inI "$2" "$i" 2> /dev/null; then
            echo -e "\033[0;32mFound in: $i \033[0m\n";
        fi;
    done
}

# Upload updated Lambda function
function updateLambda()
{
	Directory=$(find . -name "${1}.java" | sed "s/src\/.*//")

	if [ -d "${Directory}" ]; then
		cd ${Directory}
		mvn package shade:shade

		ExitCode=$?
		if [[ ${ExitCode} -ne 0 ]] ; then
			cd -
			return
		fi

		aws s3 cp target/${1}-0.0.1-SNAPSHOT.jar s3://cartographer-api-lambda-code/${1}-0.0.1-SNAPSHOT.jar
		aws lambda update-function-code --function-name ${1} --s3-bucket cartographer-api-lambda-code --s3-key ${1}-0.0.1-SNAPSHOT.jar

		cd -
	fi
}
