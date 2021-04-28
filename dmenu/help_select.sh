#!/bin/sh
# dmenu-based help broser
# to run from terminal:
#    source /path/to/help_select.sh
# or bind it to shortcut:
#   echo bind \'\"\\C-o\":\"source /path/to/help_select.sh\\n\"\' >> ~/.bashrc

option1="I3 help"
option2="Zathura help"
pdfViewer="zathura"

answer="$(echo -e $option1\\n$option2 | dmenu -i -p "Select a help file")"

case $answer in
    $option1)
        $pdfViewer ~/.helpfiles/i3_keymaps.pdf
        ;;
    $option2)
        $pdfViewer ~/.helpfiles/zathura_keymaps.pdf
        ;;
esac
exit 0
