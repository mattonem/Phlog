as yet unclassified
installAdminPhlogOnRoot: root
	| handler |
	(preferences at: #tabs)
		do: [ :aTabName | 
			handler := WAAdmin
				register: PhlogAdminFeedPage
				asApplicationAt: root , '/' , aTabName.
			handler addLibrary: JQDeploymentLibrary.
			handler addLibrary: PhlogLibrary.
			handler addLibrary: TBSDeploymentLibrary.
			handler configuration
				addParent: PhlogFeedPageConfiguration instance.
			handler configuration at: #feed put: (self getCollection: aTabName).
			handler configuration
				at: #uacctGoogle
				put: (preferences at: #uacctGoogle).
			handler configuration at: #title put: (preferences at: #title) ]