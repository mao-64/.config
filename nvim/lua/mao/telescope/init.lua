require('telescope').setup {
	defaults = {
		sorting_strategy = "ascending",
		layout_config = {
--			prompt_position = "top",
--			prompt_position = "bottom",
--			themes.get_ivy,
		}
	},
	pickers = {
	    -- Your special builtin config goes in here
	    buffers = {
	      sort_lastused = true,
	      theme = "ivy",
	      previewer = false,
	    },
    find_files = {
      theme = "ivy"
    }
  },
	extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  color_devicons = true,
}
require('telescope').load_extension('fzf')


local M = {}
M.nvim_files = function()
	require("telescope.builtin").find_files({
		prompt_title = "< NeoVimRC >",
		cwd = "~/.config/nvim/",
	})
end

M.conf_files = function()
	require("telescope.builtin").find_files({
		prompt_title = "< .config >",
		cwd = "~/.config/",
	})
end

return M
