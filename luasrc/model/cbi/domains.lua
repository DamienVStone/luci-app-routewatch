m = Map("routewatch", translate("Domain Rules"))

s = m:section(TypedSection, "domain", translate("Wildcard Domains"))
s.template = "cbi/tblsection"
s.addremove = true
s.anonymous = true

name = s:option(Value, "name", translate("Domain"))

return m