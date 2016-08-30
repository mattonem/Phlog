as yet unclassified
listOn: html
	html
		unorderedList: [ [ mkLines isNotEmpty and: [ mkLines first first = $* ] ]
				whileTrue: [ self listItemOn: html ] ]