tests-grammar
testTextGroup
	| result |
	result := PPhlogMarkdown parse: 'blabla'.
	self assert: (result first isKindOf: PMdTextGroup )