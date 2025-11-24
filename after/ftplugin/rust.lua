-- after/ftplugin/rust.lua

local bufnr = vim.api.nvim_get_current_buf()

-- RustLsp: основные команды
vim.keymap.set("n", "<leader>ra", function()
    vim.cmd.RustLsp("codeAction")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "K", function()
    vim.cmd.RustLsp({ "hover", "actions" })
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rh", function()
    vim.cmd.RustLsp({ "hover", "range" })
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>re", function()
    vim.cmd.RustLsp({ "explainError", "cycle" })
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rr", function()
    vim.cmd.RustLsp({ "renderDiagnostic", "current" })
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rd", function()
    vim.cmd.RustLsp("relatedDiagnostics")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rc", function()
    vim.cmd.RustLsp("openCargo")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rdoc", function()
    vim.cmd.RustLsp("openDocs")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rrn", function()
    vim.cmd.RustLsp("runnables")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rtt", function()
    vim.cmd.RustLsp("testables")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rdb", function()
    vim.cmd.RustLsp("debug")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rg", function()
    vim.cmd.RustLsp("crateGraph")
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rss", function()
    vim.ui.input({ prompt = "SSR query: " }, function(input)
        if input then
            vim.cmd.RustLsp({ "ssr", input })
        end
    end)
end, { buffer = bufnr, silent = true })

vim.keymap.set("n", "<leader>rhg", function()
    vim.cmd.RustLsp({ "view", "hir" })
end, { buffer = bufnr, silent = true })
vim.keymap.set("n", "<leader>rhm", function()
    vim.cmd.RustLsp({ "view", "mir" })
end, { buffer = bufnr, silent = true })
