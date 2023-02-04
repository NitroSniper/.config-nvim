function BG(colorInput)
    vim.opt.termguicolors = true
    vim.opt.background = 'dark'

    local colors = {"rose-pine", "everblush", "nordic"} -- removed: everforest
	color = colors[math.random( colorInput or #colors )]

    if (color == "everforest") then
        vim.g.everforest_background = 'hard'
    end
    
	vim.cmd.colorscheme(color)
end


function T()
	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

BG()
