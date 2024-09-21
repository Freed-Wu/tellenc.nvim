-- luacheck: ignore 113
---@diagnostic disable: undefined-global
add_rules("mode.debug", "mode.release")

target("tellenc")
do
    add_rules("luarocks.module")
    add_files("*.c", "*.cpp")
end
