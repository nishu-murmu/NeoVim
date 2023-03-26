local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end
require("nvim-treesitter.install").compilers = { "clang", "gcc" }
configs.setup({
    compilers = { "clang", "gcc" },
    ensure_installed = {
        "lua",
        "c",
        "cpp",
        "css",
        "scss",
        "bash",
        "javascript",
        "python",
        "rust",
        "typescript",
        "html",
        "fish",
        "json",
        "go",
        "make",
        "markdown",
        "yaml",
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
    autopairs = {
        enable = true,
    },
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
})
