as yet unclassified
testImage
	| result |
	result := PPhlogMarkdown parse: '![alt](url)'.
	self assert: (result first isKindOf: PMdImage)