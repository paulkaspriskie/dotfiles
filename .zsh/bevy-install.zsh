#!/bin/zsh

FILE_CONFIG=$HOME/.test-config
DIR_TEST=$HOME/.test
COLOR_GREEN='\033[0;32m'
COLOR_NONE='\033[0m'

declare -A ARRAY_GIT
ARRAY_GIT[frontend-sdk]="git@github.com:paulkaspriskie/frontend-dev-tools.git"
ARRAY_GIT[dot-files]="git@github.com:paulkaspriskie/dotfiles.git"


if [ -e $FILE_CONFIG ]; then
	while read -r line; do
		echo $line
	done < "$FILE_CONFIG"
fi


function dir_create() {
	if [ ! -d $1 ]; then
		mkdir -p $1 && echo -e "${COLOR_GREEN}Created Directory: $1${COLOR_NONE}"
	fi
} && dir_create "$DIR_TEST"


for key value in ${(kv)ARRAY_GIT}; do
	IFS='-' read -r filetype address <<< "$key"
	echo "$filetype -> $address"

	if [ $PWD != $DIR_TEST ]; then
		cd $DIR_TEST && echo "${COLOR_GREEN}Changing Directory: $DIR_TEST${COLOR_NONE}"
	fi

	git clone $value && echo "${COLOR_GREEN}Clone Success: $key${COLOR_NONE}"

done
