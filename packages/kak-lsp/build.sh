TERMUX_PKG_HOMEPAGE=https://github.com/kak-lsp/kak-lsp
TERMUX_PKG_DESCRIPTION="Language Server Protocol Client for the Kakoune editor"
TERMUX_PKG_LICENSE="MIT, Unlicense"
TERMUX_PKG_MAINTAINER="@buttaface"
TERMUX_PKG_VERSION="13.0.0"
TERMUX_PKG_SRCURL=https://github.com/kak-lsp/kak-lsp/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=4e56232d999de3d914ebb8e44c499ebfcdca5e3f0bebeb3a213d46086ba7e141
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	rm Makefile
}

termux_step_post_make_install() {
	mkdir -p ${TERMUX_PKG_MASSAGEDIR}/$TERMUX_PREFIX/share/kak-lsp/examples
	cp kak-lsp.toml ${TERMUX_PKG_MASSAGEDIR}/$TERMUX_PREFIX/share/kak-lsp/examples
	cp -r rc ${TERMUX_PKG_MASSAGEDIR}/$TERMUX_PREFIX/share/kak-lsp
}
