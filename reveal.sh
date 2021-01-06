#!/bin/bash

echo "+++++ Font Revealer for Adobe Creative Cloud +++++"



# while true; do
#     read -p "Dry run?" yn
#     case $yn in
#         [Yy]* ) make install; break;;
#         [Nn]* ) exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done

cd $HOME/Library/Application\ Support/Adobe/CoreSync/plugins/livetype/.r/

# grab all otf dot files (adjust to your needs)
for file in .*.otf
do  
  # the "Postscript name:" does not contain spaces. good for file names.
  fontName=`otfinfo --info ${file} | fgrep "PostScript name:" | grep -oE "[^ ]+$"`
  # create a FONT dir within downloads, if there is none
  mkdir -p $HOME/Downloads/FONTS/
  # copy files
  cp $file "$HOME/Downloads/FONTS/$fontName.otf"
  # echo changes:
  echo -e "$file\t⮕\t$fontName.otf"
done




echo "🚀 DONE! Check your 'FONTS' directory within Downloads"



