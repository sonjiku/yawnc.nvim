vim.cmd [[ source $HOME/.cache/wal/colors-wal.vim ]]
-- local background = vim.g.background
-- local foreground = vim.g.foreground
-- local cursor = vim.g.cursor
-- local wal00 = vim.g.color0
-- local wal01 = vim.g.color1
-- local wal02 = vim.g.color2
-- local wal03 = vim.g.color3
-- local wal04 = vim.g.color4
-- local wal05 = vim.g.color5
-- local wal06 = vim.g.color6
-- local wal07 = vim.g.color7
-- local wal08 = vim.g.color8
-- local wal09 = vim.g.color9
-- local wal10 = vim.g.color10
-- local wal11 = vim.g.color11
-- local wal12 = vim.g.color12
-- local wal13 = vim.g.color13
-- local wal14 = vim.g.color14
-- local wal15 = vim.g.color15

local wal00 = vim.g.color0
local wal01 = vim.g.color8
local wal02 = vim.g.color7
local wal03 = vim.g.color15
local wal04 = vim.g.color7
local wal05 = vim.g.color7
local wal06 = vim.g.color15
local wal07 = vim.g.color15
local wal08 = vim.g.color9
local wal09 = vim.g.color3
local wal10 = vim.g.color10
local wal11 = vim.g.color11
local wal12 = vim.g.color12
local wal13 = vim.g.color13
local wal14 = vim.g.color14
local wal15 = vim.g.color2



local palette = {
    base00=wal00,
    base01=wal01,
    base02=wal02,
    base03=wal03,
    base04=wal04,
    base05=wal05,
    base06=wal06,
    base07=wal07,
    base08=wal08,
    base09=wal09,
    base0A=wal10,
    base0B=wal11,
    base0C=wal12,
    base0D=wal13,
    base0E=wal14,
    base0F=wal15,
    perror=wal08,
    phint=wal12,
    pinfo=wal05,
    pwarn=wal14,
    none="NONE"
}

return palette
