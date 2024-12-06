-- luacheck: ignore 113
---@diagnostic disable: undefined-global
c_module "tellenc" {
    use_globals = true,
    include "tellenc.h",
    c_function "tellenc" {
        c_call "char *" "tellenc" { "char *", "buffer", "size_t", "len", "bool", "verbose" }
    }
}
