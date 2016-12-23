as yet unclassified
installAdminPhlogOnRoot: root
	| handler |
	(preferences at: #tabs)
		do: [ :aTabName | 
			handler := WAAdmin register: PhlogAdminFeedPage asApplicationAt: root , '/' , aTabName .
			handler addLibrary: PhlogLibrary.
			handler configuration addParent: PhlogFeedPageConfiguration instance.
			handler configuration at: #feed put: (self getCollection: aTabName).
			handler configuration at: #title put: (preferences at: #title) ]