BALENA_BOOT_FAT32 = "1"

IMAGE_FSTYPES_append = " resinos-img"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER = "virtual/bootloader"
# RESIN_IMAGE_BOOTLOADER = "u-boot-rockchip"

IMAGE_CMD_resinos-img_append () {
    # dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/idbloader.img of=${RESIN_RAW_IMG} bs=512 seek=64
    # dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/u-boot.itb of=${RESIN_RAW_IMG} bs=512 seek=16384

    #With rkbin
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.bin of=${RESIN_RAW_IMG} conv=notrunc bs=512 seek=64
    dd if=${DEPLOY_DIR_IMAGE}/uboot.img of=${RESIN_RAW_IMG} conv=notrunc bs=512 seek=16384
    dd if=${DEPLOY_DIR_IMAGE}/rkbin/trust.img of=${RESIN_RAW_IMG} conv=notrunc bs=512 seek=24576
}

# RESIN_BOOT_PARTITION_FILES_append = " \
#     Image${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image \
#     rk3328-rock64.dtb:/rk3328-rock64.dtb \
#     ${DEPLOY_DIR_IMAGE}/idbloader.img:/idbloader.img \
# "
# Asus tinker expects the kernel and dtbs on rootfs
# IMAGE_INSTALL_append = " kernel-image-initramfs kernel-devicetree"
# IMAGE_INSTALL_append = " kernel-image-initramfs"

# we need some space before in order to write the boot binaries, as per http://rockchip.wikidot.com/partitions
# (we do not use GPT though and we only write idbloader.bin, u-boot.img and trust.img as opposed to the above wiki)
# DEVICE_SPECIFIC_SPACE = "16384"
# RESIN_BOOT_SIZE = "114688"
DEVICE_SPECIFIC_SPACE = "20480"

# IMAGE_FEATURES += "ssh-server-dropbear"

#IMGDEPLOYDIR_ai-stick = "${ABSOLUTE_HOME}/${DEPLOY_DIR_IMAGE}" 

#IMGDEPLOYDIR_ai-stick = "${DEPLOY_DIR_IMAGE}" 
#RESIN_BOOT_PARTITION_FILES = ""
#RESIN_BOOT_PARTITION_FILES_ai-stick = ""

