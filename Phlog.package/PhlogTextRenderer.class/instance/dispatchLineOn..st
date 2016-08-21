as yet unclassified
dispatchLineOn: html
	| currentLine |
	currentLine := mkLines first.
	(self isImage: currentLine)
		ifTrue: [ self renderImageOn: html.
			^ self ].
	self renderInCodeBlockOn: html
