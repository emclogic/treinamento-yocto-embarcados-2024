SUMMARY = "Users for treinamento image"
DESCRIPTION = "usuario para uso em imagens do treinamento"

LICENSE = "CLOSED"

inherit useradd


USERADD_PACKAGES = "${PN}"

#Maneira nao segura de gerar o hash, somente para testes. Melhor gerar o hash em sua maquina usando: openssl passwd
#posteriormente colocar o hash na variavel escapando o $ com \$
PASSWORD_HASH = "$(openssl passwd teste)"

USERADD_PARAM:${PN} = "-d /home/user1 -p '${PASSWORD_HASH}' user1"

GROUPADD_PARAM:${PN} = "-g 880 group1"

do_install () {
    install -d -m 755 ${D}${datadir}/user1
    chown -R user1 ${D}${datadir}/user1
    chgrp -R group1 ${D}${datadir}/user1
}

FILES:${PN} = "${datadir}/user1"