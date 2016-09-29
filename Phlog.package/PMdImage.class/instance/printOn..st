as yet unclassified
printOn: aStream
	aStream << 'image('.
	url printOn: aStream.
	aStream << ')'