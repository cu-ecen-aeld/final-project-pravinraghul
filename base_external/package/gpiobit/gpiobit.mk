GPIOBIT_VERSION = cda244cbcdcdb441c9dc449a2f19f0790b876dfb
GPIOBIT_SITE = git@github.com:pravinraghul/ECEN-5713-Project.git
GPIOBIT_SITE_METHOD = git
GPIOBIT_MODULE_SUBDIRS += gpiobit-driver

$(eval $(kernel-module))
$(eval $(generic-package))
