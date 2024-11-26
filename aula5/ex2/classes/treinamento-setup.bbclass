HOSTNAME = "treinamento"

do_configure_hostname() {
    install -d ${IMAGE_ROOTFS}/etc
    echo "${HOSTNAME}" > ${IMAGE_ROOTFS}/etc/hostname
}

do_configure_issue() {

    install -d ${IMAGE_ROOTFS}/etc
    (
        echo "▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖    ▗▖    ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖                  ";
        echo "▐▌   ▐▛▚▞▜▌▐▌       ▐▌   ▐▌ ▐▌▐▌     █  ▐▌                     ";
        echo "▐▛▀▀▘▐▌  ▐▌▐▌       ▐▌   ▐▌ ▐▌▐▌▝▜▌  █  ▐▌                     ";
        echo "▐▙▄▄▖▐▌  ▐▌▝▚▄▄▖    ▐▙▄▄▖▝▚▄▞▘▝▚▄▞▘▗▄█▄▖▝▚▄▄▖                  ";
        echo "                                                               ";
        echo "                                                               ";
        echo "                                                               ";
        echo "▗▄▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖▗▖  ▗▖▗▄▄▄▖▗▄▖       ";
        echo "  █  ▐▌ ▐▌▐▌     █  ▐▛▚▖▐▌▐▌ ▐▌▐▛▚▞▜▌▐▌   ▐▛▚▖▐▌  █ ▐▌ ▐▌      ";
        echo "  █  ▐▛▀▚▖▐▛▀▀▘  █  ▐▌ ▝▜▌▐▛▀▜▌▐▌  ▐▌▐▛▀▀▘▐▌ ▝▜▌  █ ▐▌ ▐▌      ";
        echo "  █  ▐▌ ▐▌▐▙▄▄▖▗▄█▄▖▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▙▄▄▖▐▌  ▐▌  █ ▝▚▄▞▘      ";
        echo "                                                               ";
        echo "                                                               ";
        echo "                                                               ";
        echo "▗▖  ▗▖▗▄▖  ▗▄▄▖▗▄▄▄▖▗▄▖     ▗▄▄▖ ▗▄▄▖  ▗▄▖    ▗▖▗▄▄▄▖ ▗▄▄▖▗▄▄▄▖";
        echo " ▝▚▞▘▐▌ ▐▌▐▌     █ ▐▌ ▐▌    ▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌   ▐▌▐▌   ▐▌     █  ";
        echo "  ▐▌ ▐▌ ▐▌▐▌     █ ▐▌ ▐▌    ▐▛▀▘ ▐▛▀▚▖▐▌ ▐▌   ▐▌▐▛▀▀▘▐▌     █  ";
        echo "  ▐▌ ▝▚▄▞▘▝▚▄▄▖  █ ▝▚▄▞▘    ▐▌   ▐▌ ▐▌▝▚▄▞▘▗▄▄▞▘▐▙▄▄▖▝▚▄▄▖  █  ";
        echo "                                                               ";
        echo "                                                               ";
        echo "                                                               ";
    ) > ${IMAGE_ROOTFS}/etc/issue

}

ROOTFS_POSTPROCESS_COMMAND:append = "do_configure_hostname; do_configure_issue; "
