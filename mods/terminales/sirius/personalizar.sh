#!/bin/bash
. entorno.sh
msgStatus "Personalizacion exclusiva"
msgStatus " "
rm -rf $OUT/repack.d/ota/system/app/BooksPhone.apk
rm -rf $OUT/repack.d/ota/system/app/GlobalTime.apk
rm -rf $OUT/repack.d/ota/system/app/SpareParts.apk
rm -rf $OUT/repack.d/ota/system/app/SpareParts2.apk
rm -rf $OUT/repack.d/ota/system/app/SpeechRecorder.apk
rm -rf $OUT/repack.d/ota/system/etc/super/04superteam
rm $OUT/repack.d/ota/boot.img
