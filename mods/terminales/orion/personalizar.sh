#!/bin/bash
. entorno.sh
msgStatus "Personalizacion exclusiva"
msgStatus " "
rm -rf $OUT/repack.d/ota/system/app/BooksPhone.*
rm -rf $OUT/repack.d/ota/system/app/GlobalTime.*
rm -rf $OUT/repack.d/ota/system/app/SpareParts.*
rm -rf $OUT/repack.d/ota/system/app/SpareParts2.*
rm -rf $OUT/repack.d/ota/system/app/SpeechRecorder.*
rm -rf $OUT/repack.d/ota/system/app/SoundRecorder2.*
rm -rf $OUT/repack.d/ota/system/app/VoiceDialer.*
rm -rf $OUT/repack.d/ota/system/etc/super/04superteam
