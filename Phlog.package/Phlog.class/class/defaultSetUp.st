as yet unclassified
defaultSetUp
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	
	WAAdmin register: Phlog asApplicationAt: #phlog.
	
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	