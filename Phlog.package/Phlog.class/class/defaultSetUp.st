as yet unclassified
defaultSetUp
	| adminDispatch |
	preferences := self getPreferenceFile.
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	self installPhlogOnRoot: '' .
	self installAdminPhlogOnRoot: '/admin' .
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	adminDispatch := (WAAdmin defaultDispatcher handlerAt: 'admin')
		addFilter: PhlogPortFilter new;
		yourself.
	adminDispatch configuration addParent: WAAuthConfiguration instance.
	adminDispatch
		preferenceAt: #login put: (preferences at: #login);
		preferenceAt: #passwordHash put: (GRPlatform current secureHashFor: (preferences at: #password));
		addFilter: WAAuthenticationFilter new.
	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance