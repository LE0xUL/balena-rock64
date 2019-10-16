UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"
SRC_URI_append = " \
	file://0001-Add-Resin-specific-boot-command.patch \
	file://0002-rock64-board-Enable-CONFIG_CMD_SETEXPR.patch \
	file://0003-resin-specific-env-integration-kconfig.patch \
	file://0004-Add-rock64-recovery-support.patch \
"
# CONFIG_BOOTCOMMAND="setenv resin_kernel_load_addr ${kernel_addr_r}; 
# run resin_set_kernel_root; 
# run set_os_cmdline; 
# setenv bootargs ${resin_kernel_root} rootwait console=ttyS2,1500000 ${os_cmdline} panic=10 loglevel=7; 
# load mmc ${resin_dev_index}:${resin_root_part} ${kernel_addr_r} /boot/Image; 
# load mmc ${resin_dev_index}:${resin_root_part} ${fdt_addr_r} /boot/rk3399-nanopc-t4.dtb; 
# booti ${kernel_addr_r} - ${fdt_addr_r}"
