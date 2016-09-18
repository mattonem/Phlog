as yet unclassified
isImage: currentLine
	^ currentLine first = $! and: [ (currentLine findBetweenSubStrs: '![]()') size = 2 ]