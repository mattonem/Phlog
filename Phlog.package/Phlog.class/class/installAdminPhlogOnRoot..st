as yet unclassified
installAdminPhlogOnRoot: root
	| handler |
	handler := WAAdmin register: PhlogAdminFeedPage asApplicationAt: root , '/about'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	handler configuration at: #feed put: self aboutCollection.
	handler := WAAdmin register: PhlogAdminFeedPage asApplicationAt: root , '/friends'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	handler configuration at: #feed put: self friendsCollection.
	handler := WAAdmin register: PhlogAdminFeedPage asApplicationAt: root , '/phlog'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance