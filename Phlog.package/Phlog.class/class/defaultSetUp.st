as yet unclassified
defaultSetUp
	| adminDispatch |
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	self installPhlogOnRoot: ''.
	self installAdminPhlogOnRoot: '/admin'.
	WAAdmin defaultDispatcher defaultName: 'phlog'.
	(WAAdmin register: WAConfigurationTool asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	adminDispatch := (WAAdmin defaultDispatcher handlerAt: 'admin')
		addFilter: PhlogPortFilter new;
		yourself.
	adminDispatch configuration addParent: WAAuthConfiguration instance.
	adminDispatch
		preferenceAt: #login put: 'admin';
		preferenceAt: #passwordHash put: (GRPlatform current secureHashFor: 'password');
		addFilter: WAAuthenticationFilter new