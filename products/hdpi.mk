# of course
PRODUCT_LOCALES := hdpi

# Specific hdpi files
PRODUCT_COPY_FILES += \
	vendor/osr/prebuilt/bootanimation.hdpi.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/osr/overlay/hdpi