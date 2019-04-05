download-phase() {
    wget -c https://pcem-emulator.co.uk/files/PCemV${VERSION}Linux.tar.gz \
         -O PCemV${VERSION}Linux.tar.gz
    mkdir -p pcem
    cd pcem
    tar xzf ../PCemV${VERSION}Linux.tar.gz
}

build-phase() {
    cd pcem
    ./configure --prefix="/"
    make -j$(nproc)
}

install-phase() {
    cd pcem
    make DESTDIR="$CONTENT_DIR" install
}
