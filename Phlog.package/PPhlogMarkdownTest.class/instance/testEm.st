as yet unclassified
testEm
	| result |
	result := PPhlogMarkdown parse: '_Tit_'.
	self assert: (result first first first isKindOf: PMdEm )