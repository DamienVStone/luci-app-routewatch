module("luci.controller.routewatch", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/routewatch") then return end

    entry({"admin", "vpn", "routewatch"}, alias("admin", "vpn", "routewatch", "config"), _("RouteWatch"), 80).dependent = true
    entry({"admin", "vpn", "routewatch", "config"}, cbi("routewatch/config"), _("Configuration"), 1)
    entry({"admin", "vpn", "routewatch", "domains"}, cbi("routewatch/domains"), _("Domains"), 2)
    entry({"admin", "vpn", "routewatch", "status"}, template("routewatch/status"), _("Status"), 3)
    entry({"admin", "vpn", "routewatch", "toggle"}, call("action_toggle"))
end

function action_toggle()
    local uci = require "luci.model.uci".cursor()
    local enabled = uci:get("routewatch", "main", "enabled")
    enabled = (enabled == "1") and "0" or "1"
    uci:set("routewatch", "main", "enabled", enabled)
    uci:commit("routewatch")
    luci.http.redirect(luci.dispatcher.build_url("admin", "vpn", "routewatch"))
end