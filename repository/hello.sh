download-phase() {
    wget -c http://ftp.gnu.org/gnu/hello/hello-${VERSION}.tar.gz \
        -O hello-${VERSION}.tar.gz
    tar xzf hello-${VERSION}.tar.gz
}

build-phase() {
    cd hello-${VERSION}
    ./configure --prefix="/"
    make -j$(nproc)
}

install-phase() {
    cd hello-${VERSION}
    make DESTDIR="$CONTENT_DIR" install
}
