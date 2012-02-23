PRODUCT_BRAND ?= superosr

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.sup.superteam \
    ro.stats.devname=SuperTe@m \
    ro.stats.romname=SuperOSR

# init.d support
PRODUCT_COPY_FILES += \
    vendor/osr/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/osr/prebuilt/common/bin/sysinit:system/bin/sysinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/osr/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/osr/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/osr/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/osr/proprietary/Term.apk:system/app/Term.apk \
    vendor/osr/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so \
    vendor/osr/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip

# Bring in camera effects & videos
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)
PRODUCT_COPY_FILES +=  \
    vendor/osr/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/osr/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

#    vendor/osr/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/osr/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Required OSR packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    FileExplorer \
    MusicFX \
    MusicVisualization \
    Notes \
    LatinIME \
    SoundRecorder2 \
    SpareParts \
    Superuser \
    Superuser.apk \
    su

# Optional OSR packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    Wallpapers \
    PhaseBeam

# Custom OSR packages
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf
#    Trebuchet \

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/osr/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/osr/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/osr/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/osr/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/osr/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/osr/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/osr/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/osr/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/common

PRODUCT_VERSION_DEVICE_SPECIFIC = SuperOSR
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 2

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.osr.version=$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
