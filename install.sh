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

ui_print "- Unnofficial update by MUHAMMAD RIZKI @RiProG"

sleep 2

ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

sleep 2

function set_perm_recursive() {
    local directory=$1
    local owner=$2
    local group=$3
    local dirpermission=$4
    local filepermission=$5
    find "$directory" -type d -exec chown "$owner":"$group" {} +
    find "$directory" -type d -exec chmod "$dirpermission" {} +
    find "$directory" -type f -exec chown "$owner":"$group" {} +
    find "$directory" -type f -exec chmod "$filepermission" {} +
}

set_perm_recursive $MODPATH/system/bin 0 2000 0755 0755 
  set_perm_recursive $MODPATH/system/app 0 0 0755 0644 
  chmod 0644 $MODPATH/system/etc/be_album
  chmod 0644 $MODPATH/system/etc/be_photo
  chmod 0644 $MODPATH/system/etc/be_movie
  chmod 0644 $MODPATH/system/etc/be_movie_setting
  chmod 0644 $MODPATH/system/etc/be_movie_spc
  chmod 0644 $MODPATH/system/etc/be2_album
  chmod 0644 $MODPATH/system/etc/be2_album01
  chmod 0644 $MODPATH/system/etc/be2_album02
  chmod 0644 $MODPATH/system/etc/be2_album_mapping
  set_perm_recursive $MODPATH/system/framework 0 0 0755 0644
  set_perm_recursive $MODPATH/system/lib 0 0 0755 0644

