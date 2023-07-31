SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE="
"
sleep 2

ui_print "***************************"
ui_print "   Bravia Engine Magisk    "
ui_print "   X-Reality Super Vivid   "
ui_print "***************************"

ui_print "- Unnofficial update by RiProG"

sleep 2

ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

sleep 2

chmod -R 0755 $MODPATH/system/bin
chmod -R 0755 $MODPATH/system/app
chmod 0644 $MODPATH/system/etc/be_album
chmod 0644 $MODPATH/system/etc/be_photo
chmod 0644 $MODPATH/system/etc/be_movie
chmod 0644 $MODPATH/system/etc/be_movie_setting
chmod 0644 $MODPATH/system/etc/be_movie_spc
chmod 0644 $MODPATH/system/etc/be2_album
chmod 0644 $MODPATH/system/etc/be2_album01
chmod 0644 $MODPATH/system/etc/be2_album02
chmod 0644 $MODPATH/system/etc/be2_album_mapping
chmod -R 0644 $MODPATH/system/framework
chmod -R 0644 $MODPATH/system/lib
