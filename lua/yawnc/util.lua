local Util = {}

local function byte(value, offset)
	return bit.band(bit.rshift(value, offset), 0xFF)
end

local function rgb(color)
	color = vim.api.nvim_get_color_by_name(color)

	if color == -1 then
		color = vim.opt.background:get() == 'dark' and 000 or 255255255
	end

	return { byte(color, 16), byte(color, 8), byte(color, 0) }
end

local function parse_color(color)
	if color == nil then
		return print('invalid color')
	end

	color = color:lower()

	if not color:find('#') and color ~= 'none' then
		color = require('yawnc.palette')[color]
			or vim.api.nvim_get_color_by_name(color)
	end

	return color
end
Util.blend = function(fg, bg, alpha)
	local fg_rgb = rgb(parse_color(fg))
	local bg_rgb = rgb(parse_color(bg))

	local function blend_channel(i)
		local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format(
		'#%02X%02X%02X',
		blend_channel(1),
		blend_channel(2),
		blend_channel(3)
	)
end


---@param group string
---@param colors table<string, any>
Util.highlight = function(group, colors)
        local gc={
            link=colors.l or nil,
            ctermfg=colors.cf or nil,
            ctermbg=colors.cb or nil,
            fg=colors.f or nil,
            bg=colors.b or nil,
            sp=colors.s or nil,
            bold=colors.B or nil,
            italic=colors.I or nil,
            reverse=colors.R or nil,
            default=colors.d or nil,
            standout=colors.SO or nil,
            underline=colors.UL or nil,
            undercurl=colors.UC or nil,
            underdouble=colors.UU or nil,
            underdotted=colors.UD or nil,
            underdashed=colors.Ud or nil,
            strikethrough=colors.ST or nil,
            nocombine=colors.NC or nil,
        }

	if
		colors.bl ~= nil
		and (colors.bl >= 0 or colors.bl <= 100)
		and gc.bg ~= nil
	then
		gc.bg = Util.bl(gc.bg, parse_color('base00') or '', gc.blend / 100)
	end

	vim.api.nvim_set_hl(0, group, gc)
end

return Util
