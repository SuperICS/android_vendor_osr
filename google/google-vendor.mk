# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# CyanogenMod Customization
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Google Applications
PRODUCT_COPY_FILES += \
    vendor/osr/google/app/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
    vendor/osr/google/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/osr/google/app/FaceLock.apk:system/app/FaceLock.apk \
    vendor/osr/google/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/osr/google/app/Gmail.apk:system/app/Gmail.apk \
    vendor/osr/google/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/osr/google/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/osr/google/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/osr/google/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/osr/google/app/GoogleMusic.apk:system/app/GoogleMusic.apk \
    vendor/osr/google/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/osr/google/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/osr/google/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/osr/google/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/osr/google/app/Maps.apk:system/app/Maps.apk \
    vendor/osr/google/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/osr/google/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/osr/google/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/osr/google/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/osr/google/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/osr/google/app/PlusOne.apk:system/app/PlusOne.apk \
    vendor/osr/google/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/osr/google/app/Street.apk:system/app/Street.apk \
    vendor/osr/google/app/TagGoogle.apk:system/app/TagGoogle.apk \
    vendor/osr/google/app/Talk.apk:system/app/Talk.apk \
    vendor/osr/google/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/osr/google/app/Videos.apk:system/app/Videos.apk \
    vendor/osr/google/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/osr/google/app/YouTube.apk:system/app/YouTube.apk

# Google Permissions
PRODUCT_COPY_FILES += \
    vendor/osr/google/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/osr/google/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/osr/google/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/osr/google/etc/permissions/features.xml:system/etc/permissions/features.xml 

# Google Frameworks
PRODUCT_COPY_FILES += \
    vendor/osr/google/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/osr/google/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/osr/google/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

# Google Libraries
PRODUCT_COPY_FILES += \
    vendor/osr/google/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so \
    vendor/osr/google/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/osr/google/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/osr/google/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/osr/google/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/osr/google/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/osr/google/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/osr/google/lib/libspeexresampler.so:system/lib/libspeexresampler.so \
    vendor/osr/google/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/osr/google/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/osr/google/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/osr/google/lib/libvoicesearch.so:system/lib/libvoicesearch.so

# Google Vendor
PRODUCT_COPY_FILES += \
    vendor/osr/google/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
    vendor/osr/google/vendor/pittpatt:system/vendor/pittpatt
