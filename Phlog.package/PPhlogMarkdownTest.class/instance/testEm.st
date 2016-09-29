as yet unclassified
testEm
	| result |
	result := PPhlogMarkdown parse: 'Bla_Tit_'.
	self assert: (result first first second isKindOf: PMdEm )