#!/bin/bash
#Menu options
options=("Auto install" "Custom configuration" "Install all packets (not recomended)")

#Clean the terminal
clear

#Title menu
echo -e "\e[1;33m **************************************** \e[0m"
echo -e "        \e[1;33mStarting the configuration\e[0m"
echo -e "\e[1;33m **************************************** \e[0m"
echo "Installation wizard. For more information read README.MD file."
echo "Select a option configuration for your Linux."

#Print options menu
for arrayOption in "${options[@]}"
do
    ((optNum++))
    echo -e "\e[34m$optNum.\e[0m \e[1;34m$arrayOption\e[0m"
done

#Read the user selected option
read -p "Select one option: " op

case $op in
    1)clear
        #execute the script of basiConfig
        ./scripts/basic-config.sh
        ;;

    2)clear
        echo "2"
        ;;

    3)clear
        echo "3"
        ;;

    *) echo -e "\e[31m$op is not valid!\e[0m"
        ;;
esac

