include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for routewatch
LUCI_DEPENDS:=+uci +luci-base
PKG_MAINTAINER:=Dmitry Nikitin <dmitry_nikitin@icloud.com>

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
$(eval $(call BuildPackage,luci-app-routewatch))

package-$(CONFIG_PACKAGE_luci-app-routewatch) += luci-app-routewatch
