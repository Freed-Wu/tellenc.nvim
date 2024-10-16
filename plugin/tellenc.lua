-- luacheck: ignore 112 113
---@diagnostic disable: undefined-global

vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup("tellenc", {}),
    buffer = 0,
    callback = function()
        -- don't use
        -- table.concat(vim.api.nvim_buf_get_text(0, 0, 0, -1, -1, {}))
        -- because vim has encoding
        local fd = io.open(vim.api.nvim_buf_get_name(0))
        if fd == nil then
            return
        end
        local text = fd:read()
        fd:close()
        if text == nil then
            return
        end
        local enc = require "tellenc".tellenc(text, #text, false)
        local encs = {
            ascii = "utf-8",
            gbk = "cp936",
            gb2312 = "cp936",
            big5 = "cp950",
        }
        if encs[enc] then
            enc = encs[enc]
        end
        if enc == "binary" or enc == "unknown" or enc == vim.o.fileencoding then
            return
        end
        vim.cmd("edit ++encoding=" .. enc)
    end,
})
