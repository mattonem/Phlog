as yet unclassified
defaultSetUp
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	((WAAdmin register: PhlogFeedPage asApplicationAt: #phlog)
		addLibrary: PhlogLibrary;
		configuration) addParent: PhlogFeedPageConfiguration instance.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	(WAAdmin defaultDispatcher handlerAt: 'admin') addFilter: PhlogPortFilter new