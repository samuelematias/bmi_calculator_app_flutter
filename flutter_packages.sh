# This script is used in CI/CD to pub get all packages
BLUE="\e[36;1m%s\e[0m\n"
GREEN="\e[32;1m%s\e[0m\n"
YELLOW="\e[33;1m%s\e[0m\n"
printf "${BLUE}" 'Starting get in all packages'
for dir in packages/*
do
  printf "${GREEN}" "Get in: $dir"
  flutter packages get $dir
done
# pub get on root
printf "${GREEN}" "Get in: root"
flutter packages get
printf "${BLUE}" 'Finished get in all packages'