GPIOBIT_VERSION = b77a55d85dfe94f48d25c155e675de474d462f23
GPIOBIT_SITE = git@github.com:pravinraghul/ECEN-5713-Project.git
GPIOBIT_SITE_METHOD = git
GPIOBIT_MODULE_SUBDIRS += gpiobit-driver

define GPIOBIT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/rpi/app.py $(TARGET_DIR)/root
endef

$(eval $(kernel-module))
$(eval $(generic-package))
