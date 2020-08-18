ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = likehide
likehide_FILES = $(wildcard *.xm *.m)
likehide_FRAMEWORKS = UIKit

likehide_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 LIKE"
