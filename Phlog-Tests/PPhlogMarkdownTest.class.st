"
A PPhlogMarkdownTest is a test class for testing the behavior of PPhlogMarkdown
"
Class {
	#name : #PPhlogMarkdownTest,
	#superclass : #TestCase,
	#category : #'Phlog-Tests'
}

{ #category : #'tests-grammar' }
PPhlogMarkdownTest >> testAnchor [
	| result |
	result := PPhlogMarkdown parse: '[alt](url)'.
	self assert: (result first first first isKindOf: PMdAnchor)
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testBugFixImageTails [
	| result |
	result := PPhlogMarkdown parse: '![zac](url)]'.
	self assert: (result first first isKindOf: PMdParagraph)
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testBugImageAndText [
	| result |
	result := PPhlogMarkdown
		parse:
			'![zac](url)
	sqmljkds'.
	self assert: (result first isKindOf: PMdImage)
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testCarousel [
	| result |
	result := PPhlogMarkdown
		parse:
			'![alt](url)(url2)'.
	self assert: (result first isKindOf: PMdCarousel)
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testEm [
	| result |
	result := PPhlogMarkdown parse: 'Bla_Tit_'.
	self assert: (result first first second isKindOf: PMdEm )
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testImage [
	| result |
	result := PPhlogMarkdown
		parse:
			'![alt](url)'.
	self assert: (result first isKindOf: PMdImage)
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testStrong [
	| result |
	result := PPhlogMarkdown parse: 'test __st rong__'.
	self assert: (result first first second isKindOf: PMdStrong )
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testText [
	| result |
	result := PPhlogMarkdown parse: 'blabla'.
	self assert: (result first first isKindOf: PMdParagraph )
]

{ #category : #'tests-grammar' }
PPhlogMarkdownTest >> testTextGroup [
	| result |
	result := PPhlogMarkdown parse: 'blabla'.
	self assert: (result first isKindOf: PMdTextGroup )
]

{ #category : #'as yet unclassified' }
PPhlogMarkdownTest >> testTitle [
	| result |
	result := PPhlogMarkdown parse: '#Title'.
	self assert: (result first first isKindOf: PMdTitle )
]
