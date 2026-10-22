vim.cmd.highlight("clear")
if vim.g.syntax_on then
	vim.cmd.syntax("reset")
end
vim.o.background = "dark"
vim.g.colors_name = "blueberry-chocolate-cake"

local c = {
	black = "#000000",
	white = "#ffffff",
	gray1 = "#202020",
	gray2 = "#404040",
	gray3 = "#808080",
	gray4 = "#b0b0b0",
	gray5 = "#c8c8c8",
	gray6 = "#cccccc",
	gray7 = "#e0e0e0",
	gray8 = "#f1f1f1",

	pink = "#ff0090",
	pink_dim = "#800048",
	pink_dark = "#33001d",

	blue = "#569cd6",
	blue_light = "#9cdcfe",
	blue_bright = "#3794ff",
	teal = "#4ec9b0",
	green = "#8ddb8c",
	yellow = "#fbe090",
	gold = "#d7ba7d",
	purple = "#c586c0",
	red = "#ff6156",

	error = "#ee0000",
	error_bg = "#330000",
	warn = "#e6b800",
	warn_bg = "#635003",
	info = "#b4e6fd",
	info_bg = "#026897",
	ok = "#a5d6a7",
	ok_bg = "#1b5e20",

	diff_add = "#203424",
	diff_change = "#0e2f44",
	diff_delete = "#442423",
	diff_text = "#0e2fdc",
}

local selected = { fg = c.white, bg = c.pink }

local groups = {
	-- Editor
	Normal = { fg = c.white, bg = c.black },
	NonText = { fg = c.black, bg = c.black },
	Conceal = {},
	Title = { fg = c.pink },
	Directory = { fg = c.blue_light },
	ErrorMsg = { fg = c.error, bg = c.error_bg },
	WinSeparator = { fg = c.black, bg = c.black },

	StatusLine = { fg = c.white, bg = c.gray1 },
	StatusLineNC = { fg = c.gray3, bg = c.gray1 },
	TabLine = { link = "StatusLine" },
	TabLineFill = { link = "StatusLine" },
	TabLineSel = selected,

	NormalFloat = { link = "Normal" },
	FloatBorder = { fg = c.black },
	FloatTitle = { link = "Title" },

	Pmenu = { fg = c.gray7, bg = c.black },
	PmenuSel = selected,
	PmenuSbar = { fg = c.pink },
	PmenuThumb = { bg = c.pink },

	Cursor = selected,
	CursorLine = { bg = c.pink_dark },
	CursorLineNr = { link = "Cursor" },
	LineNr = { link = "Cursor" },
	LineNrAbove = { fg = c.gray2, bg = c.black },
	LineNrBelow = { link = "LineNrAbove" },
	MatchParen = { fg = c.white, bg = c.pink_dim },

	Search = { link = "MatchParen" },
	CurSearch = { link = "Cursor" },

	ModeMsg = selected,
	MsgArea = { link = "Normal" },

	Visual = selected,
	VisualNOS = { link = "Visual" },

	DiffAdd = { bg = c.diff_add },
	DiffChange = { bg = c.diff_change },
	DiffDelete = { bg = c.diff_delete },
	DiffText = { bg = c.diff_text },

	CmpGhostText = { fg = c.gray2, bold = true, italic = true },

	-- Diagnostics
	DiagnosticError = { link = "ErrorMsg" },
	DiagnosticWarn = { fg = c.warn, bg = c.warn_bg },
	DiagnosticInfo = { fg = c.info, bg = c.info_bg },
	DiagnosticHint = { link = "CmpGhostText" },
	DiagnosticOk = { fg = c.ok, bg = c.ok_bg },

	DiagnosticVirtualTextError = { link = "DiagnosticError" },
	DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
	DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
	DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
	DiagnosticVirtualTextOk = { link = "DiagnosticOk" },

	DiagnosticUnderlineError = { fg = c.error, undercurl = true },
	DiagnosticUnderlineWarn = { fg = c.warn, undercurl = true },
	DiagnosticUnderlineInfo = { fg = c.info, undercurl = true },
	DiagnosticUnderlineHint = { link = "DiagnosticHint" },
	DiagnosticUnderlineOk = { fg = c.ok },

	DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },
	DiagnosticFloatingOk = { link = "DiagnosticOk" },

	DiagnosticSignError = { link = "DiagnosticError" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignHint = { link = "DiagnosticHint" },
	DiagnosticSignOk = { link = "DiagnosticOk" },

	-- Syntax
	Comment = { fg = c.gray2, italic = true },

	Constant = { fg = c.blue },
	String = { fg = c.green },
	Character = { fg = c.yellow },
	Number = { fg = c.blue_light },
	Boolean = { fg = c.blue },
	Float = { link = "Number" },

	Identifier = { fg = c.gray6 },
	Function = { fg = c.teal },

	Statement = { fg = c.blue },
	Conditional = { link = "Statement" },
	Repeat = { link = "Statement" },
	Label = { link = "Statement" },
	Operator = { fg = c.gray6 },
	Keyword = { fg = c.blue },
	Exception = { link = "Statement" },

	PreProc = { fg = c.purple },
	Include = { fg = c.gray2 },
	Define = { link = "PreProc" },
	Macro = { link = "PreProc" },
	PreCondit = { link = "PreProc" },

	Type = { fg = c.teal },
	StorageClass = { link = "Statement" },
	Structure = { link = "Statement" },
	Typedef = { link = "Type" },

	Special = { link = "Character" },
	SpecialChar = { link = "Special" },
	Tag = { fg = c.teal },
	Delimiter = { link = "Special" },
	SpecialComment = { link = "Special" },
	Debug = { link = "Special" },

	Underlined = { fg = c.blue, underline = true },
	Error = { link = "ErrorMsg" },
	Todo = { fg = c.info },

	-- Tree-sitter
	["@variable"] = { link = "Identifier" },
	["@variable.builtin"] = { fg = c.blue },
	["@variable.parameter"] = { link = "@variable" },
	["@variable.parameter.builtin"] = { link = "@variable" },
	["@variable.member"] = { link = "@variable" },

	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "@constant" },
	["@constant.macro"] = { link = "@constant" },

	["@module"] = { fg = c.teal },
	["@module.builtin"] = { link = "@module" },
	["@label"] = { fg = c.gray5 },

	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },

	["@string"] = { link = "String" },
	["@string.documentation"] = { fg = c.green, bold = true },
	["@string.regexp"] = { fg = c.red },
	["@string.escape"] = { link = "Special" },
	["@string.special"] = { link = "Special" },
	["@string.special.symbol"] = { link = "Special" },
	["@string.special.url"] = { link = "Special" },
	["@string.special.path"] = { link = "Special" },

	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },

	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "@type" },
	["@type.definition"] = { link = "@type" },

	["@attribute"] = { fg = c.teal },
	["@attribute.builtin"] = { link = "@attribute" },
	["@property"] = { link = "@attribute" },

	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "@function" },
	["@function.call"] = { link = "@function" },
	["@function.macro"] = { link = "@function" },
	["@function.method"] = { link = "@function" },
	["@function.method.call"] = { link = "@function" },

	["@constructor"] = { fg = c.teal },
	["@operator"] = { fg = c.gray6 },

	["@keyword"] = { link = "Statement" },
	["@keyword.coroutine"] = { fg = c.purple },
	["@keyword.function"] = { link = "@keyword" },
	["@keyword.operator"] = { fg = c.gray6 },
	["@keyword.import"] = { link = "@keyword" },
	["@keyword.type"] = { link = "@keyword" },
	["@keyword.modifier"] = { link = "@keyword" },
	["@keyword.repeat"] = { link = "@keyword" },
	["@keyword.return"] = { link = "@keyword" },
	["@keyword.debug"] = { fg = c.gold },
	["@keyword.exception"] = { link = "@keyword" },
	["@keyword.conditional"] = { link = "@keyword" },
	["@keyword.conditional.ternary"] = { fg = c.gray6 },
	["@keyword.directive"] = { link = "@keyword" },
	["@keyword.directive.define"] = { link = "@keyword" },

	["@comment"] = { link = "Comment" },
	["@comment.documentation"] = { fg = c.gray2, bold = true, nocombine = true },
	["@comment.error"] = { fg = c.error, italic = true },
	["@comment.warning"] = { fg = c.warn, italic = true },
	["@comment.hint"] = { fg = c.gray4, italic = true },
	["@comment.info"] = { fg = c.blue_bright, italic = true },
	["@comment.todo"] = { fg = c.gray8, bg = c.gold, italic = true },

	["@punctuation.delimiter"] = { fg = c.gray6 },
	["@punctuation.bracket"] = { fg = c.gray6 },
	["@punctuation.special"] = { fg = c.blue },

	["@tag"] = { link = "Tag" },
	["@tag.builtin"] = { link = "Tag" },
	["@tag.attribute"] = { fg = c.blue_light },
	["@tag.delimiter"] = { fg = c.gray3 },
}

for name, spec in pairs(groups) do
	vim.api.nvim_set_hl(0, name, spec)
end
