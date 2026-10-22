# blueberry-chocolate-cake.nvim

Dark Neovim colorscheme: pure black background, pink accent, VS Code-like syntax colors.
Plain Lua, no dependencies. Requires Neovim 0.10+.

## Install

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
	"gmvrpw/blueberry-chocolate-cake.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("blueberry-chocolate-cake")
	end,
}
```

## Development

To try local changes, point lazy.nvim at your clone with `dir = "~/Projects/blueberry-chocolate-cake.nvim"`
and run `:colorscheme blueberry-chocolate-cake` after each edit.
