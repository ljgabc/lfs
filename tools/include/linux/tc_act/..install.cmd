cmd_/home/lijg/work/linux-3.10.83/_install/include/linux/tc_act/.install := /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/tc_act /home/lijg/work/linux-3.10.83/include/uapi/linux/tc_act tc_csum.h tc_gact.h tc_ipt.h tc_mirred.h tc_nat.h tc_pedit.h tc_skbedit.h; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/tc_act /home/lijg/work/linux-3.10.83/include/linux/tc_act ; /bin/bash scripts/headers_install.sh /home/lijg/work/linux-3.10.83/_install/include/linux/tc_act /home/lijg/work/linux-3.10.83/include/generated/uapi/linux/tc_act ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/lijg/work/linux-3.10.83/_install/include/linux/tc_act/$$F; done; touch /home/lijg/work/linux-3.10.83/_install/include/linux/tc_act/.install
