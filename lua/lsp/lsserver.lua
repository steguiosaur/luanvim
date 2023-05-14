local status_lsp_ok, lspconfig = pcall(require, "lspconfig")
if not status_lsp_ok then
	return
end

local rt = require("rust-tools")

-- requires manual compilation or installation in $PATH
-- Clangd
if vim.fn.executable('clangd') == 1 then
    lspconfig.clangd.setup{
        cmd = {"clangd"};
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" };
        root_pattern = {
            '.clangd',
            '.clang-tidy',
            '.clang-format',
            'compile_commands.json',
            'compile_flags.txt',
            'configure.ac',
            '.git'
        };
    }
end


-- Rust
if vim.fn.executable('rust-analyzer') == 1 then
    rt.setup{
        server = {
            on_attach = function(_, bufnr) end
        }
    }
end

-- LaTeX
if vim.fn.executable('texlab') == 1 then
    lspconfig.texlab.setup{
        cmd = {"texlab"};
        filetypes = { "tex", "plaintex", "bib" };
    }
end

-- Zig Language Server
if vim.fn.executable('zls') == 1 then
    lspconfig.zls.setup{
        cmd = {"zls"};
        filetypes = { "zig", "zir" };
    }
end

