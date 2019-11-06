UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"

SRC_URI_append = "file://1001-Add-Resin-specific-boot-command.patch"
SRC_URI_append = "file://1002-rock64-board-Enable-CONFIG_CMD_SETEXPR.patch"
SRC_URI_append = "file://1003-resin-specific-env-integration-kconfig.patch"