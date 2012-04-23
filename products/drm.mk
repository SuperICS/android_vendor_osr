# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/osr/prebuilt/drm/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/osr/prebuilt/drm/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/osr/prebuilt/drm/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/osr/prebuilt/drm/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    vendor/osr/prebuilt/drm/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/osr/prebuilt/drm/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

