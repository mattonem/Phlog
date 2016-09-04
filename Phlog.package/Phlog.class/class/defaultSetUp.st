as yet unclassified
defaultSetUp
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	self installPhlogOnRoot: ''.
	self installAdminPhlogOnRoot: '/admin'.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	(WAAdmin defaultDispatcher handlerAt: 'admin') addFilter: PhlogPortFilter new