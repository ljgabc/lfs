cmd_/home/lijg/work/linux-3.10.83/_install/include/linux/caif/.install := /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/caif /home/lijg/work/linux-3.10.83/include/uapi/linux/caif caif_socket.h if_caif.h; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/caif /home/lijg/work/linux-3.10.83/include/linux/caif ; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/caif /home/lijg/work/linux-3.10.83/include/generated/uapi/linux/caif ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/lijg/work/linux-3.10.83/_install/include/linux/caif/$$F; done; touch /home/lijg/work/linux-3.10.83/_install/include/linux/caif/.install
