UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"

SRC_URI_append = "file://0001-Add-Resin-specific-boot-command.patch "
SRC_URI_append = "file://0002-rock64-board-Enable-CONFIG_CMD_SETEXPR.patch "
SRC_URI_append = "file://0003-resin-specific-env-integration.patch "
# SRC_URI_append = "file://0004-Add-rock64-recovery-support.patch "
