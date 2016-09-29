as yet unclassified
printOn: aStream 
	content do: [ :elment | elment printOn: aStream. aStream cr. ]