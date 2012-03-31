#SuperOSR'squisher
TARGET_CUSTOM_RELEASETOOL := ./vendor/osr/tools/squisher

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#Skip test
LIBCORE_SKIP_TESTS := true
BLUEZ_SKIP_TESTS := true
SKIA_SKIP_TESTS := true

PRODUCT_PACKAGES += \
		Camera \
		Superuser \
		MusicFX \
		AndroidTerm \
		FileExplorer \
		Notes \
		ROMControl \
		SoundRecorder2 \
		Wallpapers

PRODUCT_CODENAME := ST
PRODUCT_VERSION_MAJOR := 0
PRODUCT_VERSION_MINOR := 0

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30
    ro.mod.version=SuperOSR \
    ro.osr.version=SuperOSR-ST-$(TEAM_PRODUCT)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.build.romversion=SuperOSR-ST-$(TEAM_PRODUCT)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.rommanager.developerid=supermvl \
    ro.sup.superteam 

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
