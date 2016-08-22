as yet unclassified
fileSelectors
	^ (FileSystem / 'var' / 'www') files collect: [ :file | self urlOfFile: file ]