$(call inherit-product, $(LOCAL_PATH)/base.mk)

$(call inherit-product, $(LOCAL_PATH)/livewallpapers.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk