GPIOBIT_VERSION = 76289027ebde6d883448ea39018f2595f6e31dbb
GPIOBIT_SITE = git@github.com:pravinraghul/ECEN-5713-Project.git
GPIOBIT_SITE_METHOD = git
GPIOBIT_MODULE_SUBDIRS += gpiobit-driver
# GPIOBIT_OVERRIDE_SRCDIR = ~/ECEN-5713-Project

define GPIOBIT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/rpi/app.py $(TARGET_DIR)/root
endef

$(eval $(kernel-module))
$(eval $(generic-package))
