#include <lauxlib.h>
#include <stdbool.h>

#include "tellenc.h"

static int _tellenc(lua_State *L) {
  lua_pushstring(
      L, tellenc(lua_tostring(L, 1), lua_tointeger(L, 2), lua_toboolean(L, 3)));
  return 1;
}

static const luaL_Reg functions[] = {
    {"tellenc", _tellenc},
    {NULL, NULL},
};

int luaopen_tellenc(lua_State *L) {
#if LUA_VERSION_NUM == 501
  luaL_register(L, "tellenc", functions);
#else
  luaL_newlib(L, functions);
#endif
  return 1;
}
