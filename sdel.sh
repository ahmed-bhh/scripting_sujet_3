#!/bin/bash

. "les_fonctions"

if [[ $# -eq 0 ]]       # Check if there is no options input
then
        show_usage
        exit 1               
fi


while getopts "chdgmv" option 
do
        case $option in
        c)
			set_compressed_file "$2"
		   
                        ;;
                 h)
        
                       display_help
                        ;;
                

                d)
                


                        move_folder_to_trash "$2"
                        ;;

                g)

                        ./graphique.sh

                        ;;
v)
auteurs
;;

                m)

                        echo "option m"
text_menu

                        ;;

                *)      # Trigger when an unknown option is unput or when an argument is missing
                        echo -e "Error: Unknown option"
                        show_usage
                        ;;

        esac
done

exit 0
