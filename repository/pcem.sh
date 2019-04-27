download-phase() {
    wget -c https://pcem-emulator.co.uk/files/PCemV"${VERSION}"Linux.tar.gz \
         -O PCemV"${VERSION}"Linux.tar.gz
    mkdir -p pcem-src
    cd pcem-src
    tar xzf ../PCemV"${VERSION}"Linux.tar.gz
}

build-phase() {
    cd pcem-src
    ./configure --prefix="/"
    make -j"$(nproc)"
}

install-phase() {
    cd pcem-src
    make DESTDIR="$CONTENT_DIR" install
}
