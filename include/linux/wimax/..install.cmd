cmd_/home/lijg/work/linux-3.10.83/_install/include/linux/wimax/.install := /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/wimax /home/lijg/work/linux-3.10.83/include/uapi/linux/wimax i2400m.h; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/wimax /home/lijg/work/linux-3.10.83/include/linux/wimax ; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/wimax /home/lijg/work/linux-3.10.83/include/generated/uapi/linux/wimax ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/lijg/work/linux-3.10.83/_install/include/linux/wimax/$$F; done; touch /home/lijg/work/linux-3.10.83/_install/include/linux/wimax/.install
