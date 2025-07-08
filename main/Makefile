include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-routewatch
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_LICENSE:=MIT
PKG_MAINTAINER:=Dmitry Nikitin <dmitry_nikitin@icloud.com>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=LuCI support for routewatch
  DEPENDS:=+uci +luci-base
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_BIN) ./luasrc/controller/routewatch.lua $(1)/usr/lib/lua/luci/controller/routewatch.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/routewatch
	$(INSTALL_BIN) ./luasrc/model/cbi/routewatch/*.lua $(1)/usr/lib/lua/luci/model/cbi/routewatch/

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/routewatch
	$(INSTALL_DATA) ./luasrc/view/routewatch/*.htm $(1)/usr/lib/lua/luci/view/routewatch/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
