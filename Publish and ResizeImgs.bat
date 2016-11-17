@echo off

rem This batch file copies the needed files into the prod directory, 
rem   including copying the big images
rem   and then uses a GIMP script to resize them to 100x100
rem GIMP script can be found at:
rem   C:\Users\davidp\.gimp-2.8\scripts
rem
rem NOTE: image size Will only act on PNG's

copy /y "C:\Users\davidp\Documents\GitHub\FamilyTreeWeb\*.css" "C:\Users\davidp\Documents\Personal\Madmog website\TREE\"
copy /y "C:\Users\davidp\Documents\GitHub\FamilyTreeWeb\*.htm" "C:\Users\davidp\Documents\Personal\Madmog website\TREE\"
copy /y "C:\Users\davidp\Documents\GitHub\FamilyTreeWeb\*.js" "C:\Users\davidp\Documents\Personal\Madmog website\TREE\"
copy /y "C:\Users\davidp\Documents\GitHub\FamilyTreeWeb\DAVID.XML" "C:\Users\davidp\Documents\Personal\Madmog website\TREE\"
copy /y "C:\Users\davidp\Documents\GitHub\FamilyTreeWeb\BigImgs\*.png" "C:\Users\davidp\Documents\Personal\Madmog website\TREE\Imgs\"

cd C:\Program Files\GIMP 2\bin

gimp-2.8 -d -f -s -i -b "(batch-image-resize \"C:\\Users\\davidp\\Documents\\Personal\\Madmog website\\TREE\\Imgs\\*.png\" 100 )" -b "(gimp-quit 0)"


