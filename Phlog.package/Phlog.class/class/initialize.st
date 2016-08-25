as yet unclassified
initialize
	newsCollection := PhlogFeedCollection on: FileSystem workingDirectory / '..' / 'data' / 'news'.
	aboutCollection := PhlogFeedCollection on: FileSystem workingDirectory / '..' / 'data' / 'about'