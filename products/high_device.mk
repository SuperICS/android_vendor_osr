$(call inherit-product, $(LOCAL_PATH)/base.mk)

$(call inherit-product, $(LOCAL_PATH)/livewallpapers.mk)

# Bring in all New audio files
include frameworks/base/data/sounds/NewAudio.mk
# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk
