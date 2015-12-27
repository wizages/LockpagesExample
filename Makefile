include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockpagesExample
LockpagesExample_FILES = Tweak.xm LPExampleView.m LPExampleViewController.m
LockpagesExample_LDFLAGS = -llockpages

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
