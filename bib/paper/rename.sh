#!/bin/bash

if [ ! -e Exported\ Items.bib ]; then
    echo "Exported Items.bib is not exist"
    exit -1
fi

new_name=$(sed -n '2p' Exported\ Items.bib | awk -F '{' '{print $2}' | awk -F ',' '{print $1}')
new_name_clear=$(echo $new_name | sed 's/://')
mv Exported\ Items.bib $new_name_clear.bib
sed -i "s/$new_name/$new_name_clear/g" $new_name_clear.bib

# cd ../..
# ./clear_temporary_files.sh
# ./generate_paper.sh
# ./generate_paper.sh

echo 
echo "new name is: "
echo $new_name_clear
