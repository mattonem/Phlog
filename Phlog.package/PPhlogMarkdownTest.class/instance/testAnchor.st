tests-grammar
testAnchor
	| result |
	result := PPhlogMarkdown parse: '[alt](url)'.
	self assert: (result first first first isKindOf: PMdAnchor)