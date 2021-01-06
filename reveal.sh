#!/bin/bash

echo "❦ Font Revealer for Adobe Creative Cloud ❦"

echo "Dry-Run will preview the renaming process without copy any files."
select dce in "Dry-Run" "Copy" "Exit"; do
    case $dce in
        Dry-Run ) isDry=true; echo "Dry-running..."; break;;
        Copy ) isDry=false; echo "Copy & rename files..."; break;;
        Exit ) exit;;
    esac
done

cd $HOME/Library/Application\ Support/Adobe/CoreSync/plugins/livetype/.r/

# grab all otf dot files (adjust to your needs)
for file in .*.otf
do  
  # the "Postscript name:" does not contain spaces. good for file names.
  fontName=`otfinfo --info ${file} | fgrep "PostScript name:" | grep -oE "[^ ]+$"`
  
  if [ "$isDry" = false ] ; then
    # create a FONT dir within downloads, if there is none
    mkdir -p $HOME/Downloads/FONTS/
    # copy files (if no dry-run)
    cp $file "$HOME/Downloads/FONTS/$fontName.otf"
  fi

  # echo changes:
  echo -e "$file\t⮕\t$fontName.otf"
done

echo "🚀 DONE! Check your 'FONTS' directory within Downloads"
