-- luacheck: ignore 113 143
---@diagnostic disable: undefined-global
---@diagnostic disable: undefined-field
add_rules("mode.debug", "mode.release")

target("tellenc")
do
    add_includedirs(".")
    add_rules("luarocks.module", "lua.native-object")
    add_files("*.cpp", "*.nobj.lua")
    add_links("stdc++")
end
