GPIOBIT_VERSION = fea9fe745137bc5af3570a19f5bbc279d761ce62
GPIOBIT_SITE = git@github.com:pravinraghul/ECEN-5713-Project.git
GPIOBIT_SITE_METHOD = git
GPIOBIT_MODULE_SUBDIRS += gpiobit-driver
# GPIOBIT_OVERRIDE_SRCDIR = ~/ECEN-5713-Project

define GPIOBIT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/rpi all
endef

define GPIOBIT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/rpi/test-gpiobit $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/rpi/app.py $(TARGET_DIR)/root
endef

$(eval $(kernel-module))
$(eval $(generic-package))
