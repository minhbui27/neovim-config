require("null-ls").setup({
	on_attach = on_attach,
	debug = false,
	sources = {
		require("null-ls").builtins.formatting.stylua.with({ extra_args = { "--quote_style" } }),
		require("null-ls").builtins.formatting.black.with({ extra_args = { "--fast" } }),
		require("null-ls").builtins.formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		}),
	},
})
