as yet unclassified
defaultSetUp
	<example>
	| adminDispatch |
	preferences := self getPreferenceFile.
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	self installPhlogOnRoot: ''.
	self installAdminPhlogOnRoot: '/admin'.
	WAAdmin defaultDispatcher defaultName: (preferences at: #tabs) first.
	(WAAdmin
		register: WAConfigurationTool
		asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	adminDispatch := (WAAdmin defaultDispatcher handlerAt: 'admin')
		yourself.
	adminDispatch configuration addParent: WAAuthConfiguration instance.
	adminDispatch
		preferenceAt: #login put: (preferences at: #login);
		preferenceAt: #passwordHash
			put: (GRPlatform current secureHashFor: (preferences at: #password));
		addFilter: WAAuthenticationFilter new.
	WAAdmin applicationDefaults
		removeParent: WADevelopmentConfiguration instance.
	(ZnZincServerAdaptor port: 8443) start