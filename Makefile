INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BlissfulIgnorance

BlissfulIgnorance_FILES = Tweak.xm
BlissfulIgnorance_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
