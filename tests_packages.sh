# This script is used in CI/CD to test all packages
BLUE="\e[36;1m%s\e[0m\n"
GREEN="\e[32;1m%s\e[0m\n"
YELLOW="\e[33;1m%s\e[0m\n"
RED="\e[31;1m%s\e[0m\n"
printf "${BLUE}" 'Starting running tests in packages'
for dir in packages/*
do
    if [ -d "$dir/test" ] 
    then
        printf "${GREEN}" "Running test in: $dir"
        cd $dir
        flutter test 
        cd -
    else
        printf "${RED}" "No found test in: $dir"
    fi
done
printf "${GREEN}" "Running tests in: root"
flutter test
printf "${BLUE}" "Finished test in packages"

