as yet unclassified
testStrong
	| result |
	result := PPhlogMarkdown parse: 'test __st rong__'.
	self assert: (result first first second isKindOf: PMdStrong )