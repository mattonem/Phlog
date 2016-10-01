as yet unclassified
installPhlogOnRoot: root
	| handler |
	handler := WAAdmin register: PhlogFeedPage asApplicationAt: root , '/about'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	handler configuration at: #feed put: self aboutCollection.
	handler := WAAdmin register: PhlogFeedPage asApplicationAt: root , '/friends'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance.
	handler configuration at: #feed put: self friendsCollection.
	handler := WAAdmin register: PhlogFeedPage asApplicationAt: root , '/phlog'.
	handler addLibrary: PhlogLibrary.
	handler configuration addParent: PhlogFeedPageConfiguration instance