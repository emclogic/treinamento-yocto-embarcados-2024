SUMMARY = "Imagem Treinamento Emc Logic"
DESCRIPTION = "Imagem base do treinamento Emc Logic com Embarcados"

LICENSE = "CLOSED"

inherit core-image

export IMAGE_BASENAME = "core-image-treinamento"
MACHINE_NAME ?= "${MACHINE}"
IMAGE_NAME = "${MACHINE_NAME}_${IMAGE_BASENAME}"

IMAGE_DEV_MANAGER = "udev"
IMAGE_INIT_MANAGER = "systemd"

IMAGE_LINGUAS = "pt-br"

IMAGE_FEATURES:append = "splash ssh-server-openssh package-management"

IMAGE_INSTALL:append = "\
    packagegroup-core-boot \
    packagegroup-basic \
    kernel-modules \
    net-tools \
    nginx "

add_rootfs_version () {
    printf "${DISTRO_NAME} ${DISTRO_VERSION} (${DISTRO_CODENAME}) \\\n \\\l\n" > ${IMAGE_ROOTFS}/etc/issue
    printf "${DISTRO_NAME} ${DISTRO_VERSION} (${DISTRO_CODENAME}) %%h\n" > ${IMAGE_ROOTFS}/etc/issue.net
    printf "${IMAGE_NAME}\n\n" >> ${IMAGE_ROOTFS}/etc/issue
    printf "${IMAGE_NAME}\n\n" >> ${IMAGE_ROOTFS}/etc/issue.net
}

ROOTFS_POSTPROCESS_COMMAND:append = " add_rootfs_version;"
