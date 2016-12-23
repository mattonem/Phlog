as yet unclassified
getCollection: aTabName
	^ collections at: aTabName ifAbsentPut: (PhlogFeedCollection on: FileSystem workingDirectory / '..' / 'data' / aTabName).