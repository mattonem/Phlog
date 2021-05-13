Class {
	#name : #PPhlogMarkdown,
	#superclass : #PPCompositeParser,
	#instVars : [
		'document',
		'paragraph',
		'title',
		'image',
		'url',
		'altText',
		'em',
		'text',
		'textGroup',
		'strong',
		'anchor',
		'carousel'
	],
	#category : #'Phlog-Markdown'
}

{ #category : #grammar }
PPhlogMarkdown >> altText [
	^ (#newline asParser / $] asParser) negate star flatten ==> [ :node | PMdString from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> anchor [
	^ $[ asParser, altText  , '](' asParser, url  ,$) asParser ==> [ :node | 
		PMdAnchor from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> carousel [
	^ ('![' asParser , altText , ']' asParser ,(('(' asParser , url , ')' asParser) min: 2)
		, #newline asParser negate not) ==> [ :node | PMdCarousel from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> document [
	^  ((image/carousel/textGroup) separatedBy: #newline asParser plus) withoutSeparators ==> [ :node | PMdDocument from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> em [
^ $_ asParser , (#newline asParser/ $_ asParser) negate star, $_ asParser ==> [:node | PMdEm from: node]
]

{ #category : #grammar }
PPhlogMarkdown >> image [
	^ ('![' asParser , altText , '](' asParser , url , ')' asParser
		, #newline asParser negate not) ==> [ :node | PMdImage from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> paragraph [
	^ (anchor/strong/em/text) star ==> [ :node | PMdParagraph from: node ]
]

{ #category : #accessing }
PPhlogMarkdown >> start [
	^ document end
]

{ #category : #grammar }
PPhlogMarkdown >> strong [
	^ '__' asParser , (#newline asParser/ '__' asParser) negate star flatten, '__' asParser ==> [:node | PMdStrong from: node]
]

{ #category : #grammar }
PPhlogMarkdown >> text [ 
	^ ((anchor/ strong / em ) not, #newline asParser negate) plus ==> [ :node | PMdString from: (node collect: #second) ]
]

{ #category : #grammar }
PPhlogMarkdown >> textGroup [
	^ 
		(((image/carousel) not, ( title/paragraph) separatedBy: (#newline asParser plus)) ) withoutSeparators ==> [ :node | PMdTextGroup from: ( node collect: #second )  ]
]

{ #category : #grammar }
PPhlogMarkdown >> title [
	^ $# asParser, paragraph  ==> [ :node | PMdTitle from: node ]
]

{ #category : #grammar }
PPhlogMarkdown >> url [
	^ (#space asParser / $) asParser) negate star flatten ==> [ :node | PMdString from: node ]
]
