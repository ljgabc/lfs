cmd_/home/lijg/work/linux-3.10.83/_install/include/linux/dvb/.install := /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/dvb /home/lijg/work/linux-3.10.83/include/uapi/linux/dvb audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/dvb /home/lijg/work/linux-3.10.83/include/linux/dvb ; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/dvb /home/lijg/work/linux-3.10.83/include/generated/uapi/linux/dvb ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/lijg/work/linux-3.10.83/_install/include/linux/dvb/$$F; done; touch /home/lijg/work/linux-3.10.83/_install/include/linux/dvb/.install
