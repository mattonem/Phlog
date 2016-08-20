as yet unclassified
defaultSetUp
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	
	(WAAdmin register: Phlog asApplicationAt: #phlog) addFilter: PhlogPortFilter new.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	
	