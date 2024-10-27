# Skeleton build.sh script for new package.
# For reference about available fields, check the Termux Developer's Wiki page:
# https://github.com/termux/termux-packages/wiki/Creating-new-package

TERMUX_PKG_HOMEPAGE=
TERMUX_PKG_DESCRIPTION=""
TERMUX_PKG_LICENSE=""
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=
TERMUX_PKG_SRCURL=
TERMUX_PKG_SHA256=
#TERMUX_PKG_DEPENDS=""
#TERMUX_PKG_BUILD_IN_SRC=true
ermux_step_make_install() {
	install -Dm0755 \
		-t "$TERMUX_PREFIX"/bin \
		"$TERMUX_PKG_BUILDDIR"/CPP/7zip/Bundles/Alone2/b/c/7zz
	install -Dm0644 \
		-t "$TERMUX_PREFIX"/share/doc/"$TERMUX_PKG_NAME" \
		"$TERMUX_PKG_BUILDDIR"/DOC/{7zC,7zFormat,lzma,Methods,readme,src-history}.txt
	install -Dm0644 \
		-t "$TERMUX_PREFIX"/share/LICENSES/"$TERMUX_PKG_NAME" \
		"$TERMUX_PKG_BUILDDIR"/DOC/{copying,License}.txt
}
