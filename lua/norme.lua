local ok, null_ls = pcall(require, 'null-ls')
local utils = require('norme.utils')

local M = {}

local cfile = require('norme.cfile')
local hfile = require('norme.hfile')

M.on_attach = function(_, _)
	if not ok then
		print(
			'[Norme.nvim] requirement null-ls is missing. Install it with your plugin manager.'
		)
		return
	end

	if not utils.check_norminette() then
		print(
			'[Norme.nvim] norme.nvim requires norminette version 3.3.0 or higher.'
		)
		return
	end

	null_ls.setup()
	null_ls.register({
		name = 'norminette',
		sources = { cfile, hfile },
	})
	print(
		"[Norme.nvim] norme.nvim now uses `require('norme').setup(). Update your configuration accordingly."
	)
end

M.setup = function()
	if not ok then
		print(
			'[Norme.nvim] requirement null-ls is missing. Install it with your plugin manager.'
		)
		return
	end

	if not utils.check_norminette() then
		print(
			'[Norme.nvim] norme.nvim requires norminette version 3.3.0 or higher.'
		)
		return
	end

	null_ls.register({
		name = 'norminette',
		sources = { cfile, hfile },
	})
end

return M
