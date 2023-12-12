-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.diffopt = "internal,filler,closeoff,linematch:100"
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

-- Keymaps
vim.keymap.set('n', '<C-j>', "15jz.")
vim.keymap.set('n', '<C-k>', "15kz.")

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")
vim.keymap.set('v', '<leader>p', "\"_dP")
vim.keymap.set('v', '<leader>y', "\"+Y")

-- Commands
vim.api.nvim_create_user_command('H',
	function(opts)
		vim.cmd("vertical rightbelow help " .. opts.fargs[1])
		vim.cmd("vertical resize 95")
	end,
	{ nargs = 1, desc = "Help on the right" })

vim.api.nvim_create_user_command("RE",
	function(...)
		vim.cmd("vertical rightbelow split")
		vim.cmd("vertical resize 95")
		if arg['n'] == 1 then
			vim.cmd("Explore " .. arg[1])
		else
			vim.cmd("Explore")
		end
	end,
	{ nargs = '?', desc = "[R]ight [E]xplore" })


return {}
