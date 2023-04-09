vim.opt.termguicolors = true

-- background = #282C34
require('bufferline').setup {
    highlights = {
        background = {
            fg = "",
            bg = ""
        },
        fill = { fg= "", bg = ""},
        buffer_selected = { bold = true, italic = false, bg = '#303640' },
        separator_selected = {bg = '#303640' },
        indicator_selected = {bg = '#303640',fg = '#303640'   },
        numbers_selected = {bg = "#303640", bold = true, italic = false},
        close_button_selected = {bg = "#303640"},
        diagnostic_selected = {bg = "#303640"},
        hint_selected = {bg = "#303640"},
        info_selected = {bg = "#303640"},
        warning_selected = {bg = "#303640"},

        separator = { bg = "", fg = ""},
        modified_selected = { italic = true, bg = "#303640"}
       },
     options = {
            offsets = {
                {
                    filetype = "packer",
                    text = "Packer",
                    -- text_align = "left" | "center" | "right"
                    -- separator = true,
                    padding = 1,
                    highlight = "PanelHeading"
                },
                {
                    filetype = "NvimTree",
                    text = "Explorer",
                    -- text_align = "left" | "center" | "right"
                    separator = true,
                    padding = 0,
                    highlight = "PanelHeading"
                }

            },
                       show_buffer_close_icons = true,
            show_close_icon = false,
            numbers = "ordinal",
            diagnostics = "nvim_lsp",
            -- separator_style = "thin", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' 
            separator_style = {"|", "|"},
            -- indicator = { icon = "", style = ""},
            left_trunc_marker = "",
            right_trunc_marker = "",
            persist_buffer_sort = true,
            enforce_regular_tabs = true,
            buffer_close_icon = '',
            color_icons = true,
            max_name_length = 18,
            max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
            truncate_names = true, -- whether or not tab names should be truncated
        }
    }
-- keymap for jumping to buffers
for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, function()
    require("bufferline").go_to_buffer(i, true)
  end)
end
-- jump to last tab
vim.keymap.set("n", "<leader>0", function() require("bufferline").go_to_buffer(-1, true) end)


