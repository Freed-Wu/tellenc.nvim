local tellenc = require "tellenc".tellenc

-- luacheck: ignore 113
---@diagnostic disable: undefined-global
describe("test", function()
    it("tests tellenc()", function()
        assert.are.equal(tellenc("abc"), "ascii")
        assert.are.equal(tellenc("你好"), "utf-8")
    end)
end)
