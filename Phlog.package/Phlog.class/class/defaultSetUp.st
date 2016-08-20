as yet unclassified
defaultSetUp
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	(WAAdmin register: Phlog asApplicationAt: #phlog) addLibrary: PhlogBootstrapLibrary.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config')
		addLibrary: WAToolFiles.
	(WAAdmin defaultDispatcher handlerAt: 'admin') addFilter: PhlogPortFilter new