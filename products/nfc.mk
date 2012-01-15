# NFC
PRODUCT_PACKAGES += \
        libnfc \
        libnfc_jni \
        Nfc \
        Tag

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml
