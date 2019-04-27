download-phase() {
    shopt -u dotglob
    wget -c https://download-cf.jetbrains.com/webide/PhpStorm-"${VERSION}".tar.gz \
         -O PhpStorm-"${VERSION}".tar.gz
    tar xzf PhpStorm-"${VERSION}".tar.gz
}

build-phase() {
    :
}

install-phase() {
    cp -r PhpStorm*/* "$CONTENT_DIR"
}
