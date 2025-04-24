> **NOTE:** This is a personal fork for my own use, functionality is not guaranteed.

# Norme.nvim
A null-ls source for École 42 [`norminette`](https://github.com/42School/norminette)

## Requirements
- NeoVim `v0.8+`.
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)
- [`norminette`](https://github.com/42School/norminette) installed

## Setup
You can pass your configuration via the `setup` function.

> **Warning** Remember to setup the plugin only after setting up null-ls!

```lua
vim.g.c_syntax_for_h = 1 -- norminette doesn't do c++
vim.diagnostic.config({ virtual_text = true }) -- required since nvim 0.11
require("null-ls").setup({ ... })
require("norme").setup({
	-- Your configuration
	cmd = os.getenv('HOME') .. '/.local/bin/norminette',
	args = { "--no-colors" }, -- since norminette 3.3.56
})
```

Norme.nvim comes with the following defaults:

```lua
---@type NormeConfig
local defaults = {
	cmd = "norminette",
	args = {},
}
```
