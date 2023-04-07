local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
--		['<C-o>'] = cmp.mapping.scroll_complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<C-y>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
		['<Enter>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
		['<Tab>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
	
	}),

	sources = cmp.config.sources({
		{ name = 'nvim_lua' },
		{ name = 'nvim_lsp' },
		{ name = 'path' },
		{ name = 'buffer', keyword_length = 5 },
	}),

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	formatting = {
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				buffer = '[Buffer]',
				nvim_lsp = '[LSP]',
				nvim_lua = '[Lua]',
				path = '[Path]',
				luasnip = '[Luasnip]',
			},
		},
	},

	experimental = {
		native_menu = false;
		ghost_text = true,
	},
})
