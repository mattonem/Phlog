as yet unclassified
initializeOn: aDirectory
	aDirectory ensureCreateDirectory.
	storeDirectory := aDirectory.
	self updateContentCollection