as yet unclassified
isImage: currentLine
	^ currentLine first = $! and: [ (currentLine findBetweenSubstrings: '![]()') size = 2 ]