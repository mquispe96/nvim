require('Comment').setup({
  -- Enable toggling block comments in normal/visual mode
  mappings = {
    basic = true, -- Includes `gcc` for line comment and `gc` for block comment
    extra = true, -- Includes `gbc` for block comment in normal/visual mode
  },
  -- You can also use toggling for block comments
  toggler = {
    line = 'gcc',
    block = 'gbc', -- Set your key mapping for block comments
  },
  opleader = {
    line = 'gc',
    block = 'gb', -- Set your key mapping for block comments
  },
  -- Enable commenting by block instead of by line
  pre_hook = function(ctx)
    local U = require('Comment.utils')

    local location = nil
    if ctx.ctype == U.ctype.block then
      location = require('ts_context_commentstring.utils').get_cursor_location()
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
      location = require('ts_context_commentstring.utils').get_visual_start_location()
    end

    return require('ts_context_commentstring.internal').calculate_commentstring({
      key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
      location = location,
    })
  end,
})
