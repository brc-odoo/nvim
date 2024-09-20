require'lspconfig'.pylsp.setup{
	settings = {
		pylsp = {
			plugins = {
				flake8 = {
					enabled = true,
					ignore = {
						'E301',
						'E302',
						'E501',
						'W504'
					},
					maxLineLength = 200
				},
				jedi_completion = {
					enabled = true,
				},

			}
		}
	}
}
