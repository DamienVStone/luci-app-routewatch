m = Map("routewatch", translate("RouteWatch Configuration"))

s = m:section(NamedSection, "main", "routewatch", translate("Main Settings"))

btn = s:option(Button, "_toggle", translate("Toggle Enable/Disable"))
btn.inputtitle = translate("Enable/Disable")
btn.inputstyle = "apply"
btn.redirect = luci.dispatcher.build_url("admin/services/routewatch/toggle")

iface = s:option(ListValue, "iface", translate("Interface"))
iface:value("lo")
iface:value("lan")
iface:value("wan")
iface.default = "wan"

interval = s:option(Value, "interval", translate("Interval (seconds)"))
interval.datatype = "uinteger"
interval.default = "5"

return m