# of course
PRODUCT_LOCALES := mdpi

# Specific hdpi files
PRODUCT_COPY_FILES += \
	vendor/osr/prebuilt/bootanimation.mdpi.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/osr/overlay/mdpi