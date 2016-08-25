as yet unclassified
initialize
	newsCollection := PhlogFeedCollection new.
	newsCollection storingFile: FileSystem workingDirectory / '..' / 'data'.
	newsCollection newContent text: 'coucou'.
