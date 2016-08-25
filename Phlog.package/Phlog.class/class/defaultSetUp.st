as yet unclassified
defaultSetUp
	| handler |
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	handler := WAAdmin register: PhlogFeedPage asApplicationAt: #about.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	handler configuration at: #feed put: self aboutCollection.
	handler := WAAdmin register: PhlogFeedPage asApplicationAt: #phlog.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config')
		addLibrary: WAToolFiles.
	(WAAdmin defaultDispatcher handlerAt: 'admin') addFilter: PhlogPortFilter new