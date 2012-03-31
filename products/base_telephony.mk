$(call inherit-product, build/target/product/base_telephony.mk)

PRODUCT_COPY_FILES += \
    vendor/osr/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/osr/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml
