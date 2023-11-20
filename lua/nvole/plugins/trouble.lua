return {
    "folke/trouble.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("trouble").setup({
            -- signs = {
            -- 	-- icons / text used for a diagnostic
            -- 	error = "",
            -- 	warning = "",
            -- 	hint = "",
            -- 	information = "",
            -- 	other = "",
            -- },
        })

        local keymap = vim.keymap.set

        keymap("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
        keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
        keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
        keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
        keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)

    end,
}
