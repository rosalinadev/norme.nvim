local M = {}

local config = require("norme.config")

---@type fun(opts: NormeConfig?)
function M.setup(opts)
	config.setup(opts)

	local normels = require("norme.null-ls")
	require("null-ls").register(normels.source)
end

return M
