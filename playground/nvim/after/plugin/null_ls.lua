local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        --python
        null_ls.builtins.diagnostics.pylint.with({
            --E0401 is import not found. due to some issues with pylint not
            --being able to detect packages in poetry I have disabled the error
            extra_args = { "--disable=E0401" },
        }),
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.black.with({
            extra_args = { "--line-length=79" },
        }),
        null_ls.builtins.formatting.isort.with({
            extra_args = { "--profile black" },
        }),

        --css
        null_ls.builtins.formatting.prettierd.with({
            filetypes = { "css", "scss", "less" },
        }),
    },
})
