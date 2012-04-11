#
# SuperOSR Audio Files
#

ALARM_PATH := vendor/osr/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/osr/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/osr/prebuilt/common/media/audio/ringtones

# Alarms
PRODUCT_COPY_FILES += \
	$(ALARM_PATH)/Alarm2.ogg:system/media/audio/alarms/Alarm2.ogg \
	$(ALARM_PATH)/Beeps.mp3:system/media/audio/alarms/Beeps.mp3 \
	$(ALARM_PATH)/Snooze.mp3:system/media/audio/alarms/Snooze.mp3

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Bubbles.ogg:system/media/audio/notifications/Bubbles.ogg \
	$(NOTIFICATION_PATH)/codeccall.ogg:system/media/audio/notifications/codeccall.ogg \
	$(NOTIFICATION_PATH)/eXcitement.ogg:system/media/audio/notifications/eXcitement.ogg \
	$(NOTIFICATION_PATH)/icq_message.ogg:system/media/audio/notifications/icq_message.ogg \
	$(NOTIFICATION_PATH)/Mail.ogg:system/media/audio/notifications/Mail.ogg \
	$(NOTIFICATION_PATH)/Ping.ogg:system/media/audio/notifications/Ping.ogg \
	$(NOTIFICATION_PATH)/regulus.ogg:system/media/audio/notifications/regulus.ogg \

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/Old_Phone.mp3:system/media/audio/ringtones/Old_Phone.mp3 \
	$(RINGTONE_PATH)/Theway.mp3:system/media/audio/ringtones/Theway.mp3
