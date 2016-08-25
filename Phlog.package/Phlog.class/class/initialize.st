as yet unclassified
initialize
	newsCollection := PhlogFeedCollection on: FileSystem workingDirectory / '..' / 'data'.
	newsCollection newContent text: 'coucou'.
