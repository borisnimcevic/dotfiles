require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,


  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- for the rainbow parentheses plugin
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}
--[[
local status_ok, configs = pcall (require,"nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "maintained",
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },

  indent = { enable = true, disable = { "yaml" } },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}
]]--
