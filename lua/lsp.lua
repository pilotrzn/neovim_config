local on_attach = function(client, bufnr)
	--	vim.bo[bufnr.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
	local opts = { buffer = bufnr, remap = false }
	local map = vim.keymap.set
	local buf = vim.lsp.buf
	map("n", "gd", buf.definition, opts)
	map("n", "K", buf.hover, opts)
	map("n", "gi", buf.implementation, opts)
	map("n", "<leader>D", buf.type_definition, opts)
	map("n", "gr", buf.references, opts)
	map("n", "<leader>lr", buf.rename, opts)
	map("n", "<leader>ca", buf.code_action, opts)
	map("n", "[d", vim.diagnostic.goto_prev, opts)
	map("n", "]d", vim.diagnostic.goto_next, opts)
	map("n", "<leader>F", function()
		require("conform").format({
			async = true,
			lsp_fallback = true,
		})
	end, opts)
end

vim.filetype.add({
	extension = {
		jinja = "jinja",
		jinja2 = "jinja",
		j2 = "jinja",
	},
})

vim.lsp.config("ansiblels", {
	cmd = { "ansible-language-server", "--stdio" },
	filetypes = { "yaml", "ansible", "yml" },
	root_markers = { ".git", "ansible.cfg", "playbook.yml" },
	settings = { ansible = { ansibleLint = { enabled = true } } },
	on_attach = on_attach,
})

vim.lsp.config("pyright", {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = { ".git", "pyproject.toml", "setup.py", "requirements.txt" },
	settings = { python = { analysis = { typeCheckingMode = "basic" } } },
	on_attach = on_attach,
})

vim.lsp.config("yamlls", {
	cmd = { "yaml-language-server", "--stdio" },
	filetypes = { "yaml", "yml" },
	root_markers = { ".git" },
	settings = {
		yaml = {
			format = {
				enable = false,
			},
			schemas = {
				["https://json.schemastore.org/ansible-stable-2.16.json"] = "/*{ansible,playbook}.{yaml,yml}",
			},
		},
	},
	on_attach = on_attach,
})

vim.lsp.config("jinja_lsp", {
	cmd = { "jinja-lsp" },
	name = "jinja_lsp",
	filetypes = { "jinja", "j2" },
	root_markers = { ".git" },
	on_attach = on_attach,
})

vim.lsp.config("marksman", {
	cmd = { "marksman", "server" },
	filetypes = { "markdown" },
	root_markers = { ".git", ".marksman.toml" },
	on_attach = on_attach,
})

vim.lsp.enable("marksman")
vim.lsp.enable("pyright")
vim.lsp.enable("ansiblels")
vim.lsp.enable("yamlls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("jinja_lsp")

vim.api.nvim_create_user_command("LspInfo", function()
	local clients = vim.lsp.get_clients()
	if #clients == 0 then
		print("No active LSP clients")
	else
		for _, client in ipairs(clients) do
			print(string.format("Client: %s (%s), root: %s", client.name, client.id, client.config.root_dir or "none"))
		end
	end
end, {})
