$(call inherit-product, build/target/product/base_telephony.mk)

$(call inherit-product, vendor/osr/products/base_audio.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Theway.mp3 \
    ro.config.notification_sound=Ping.ogg \
    ro.config.alarm_alert=Alarm2.ogg
