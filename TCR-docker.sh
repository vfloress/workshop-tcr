#!/bin/bash
green=`tput setaf 2`
red=`tput setaf 1`
reset=`tput sgr0`

docker build -t workshop-tcr .
docker run --rm workshop-tcr
RESULT=$?
if [ $RESULT -ne 0 ];
then
  echo "==================="
  echo  "${red}Oh no! Revert 😩${reset}"
  git checkout src/main

else
  echo "==================="
  echo  "${green}🙌 Let's commit! 😎${reset}"
  git add src/main
  git commit -m "Wip"
fi
