GREEN="\e[32;1m%s\e[0m\n"
RED="\e[31;1m%s\e[0m\n"

if [[ -z $(git status --porcelain) ]];
then
    printf "${GREEN}" 'Its is clean'
else
    printf "${RED}" "Run 'bash ./flutter_packages' first because has changes in git"
    exit 1 
fi