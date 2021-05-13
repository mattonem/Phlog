Class {
	#name : #PhlogTextRenderer,
	#superclass : #WAComponent,
	#instVars : [
		'editableText',
		'mkLines',
		'editableContent',
		'callback',
		'result'
	],
	#category : #'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> callback: aPhlog [ 
	callback := aPhlog
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> editableContent [
	^ editableContent
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> editableContent: aPhlogEditableContent [ 
	editableContent := aPhlogEditableContent
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> editableText: aEditableText [
	editableText := aEditableText.
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> renderActions: html [
	^ html anchor
		class: 'btn';
		url: (self session url addToPath: editableContent key asString);
		with: 'view'
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> renderContentOn: html [
	html article
		with: [ html tbsPanel beDefault
				with: [ html tbsPanelBody: [ self renderEditableContentOn: html ].
					html break.
					html tbsButtonGroup: [ self renderActions: html ] ] ]
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> renderEditableContentOn: html [
	| ir |
	ir := PPhlogMarkdown parse: editableContent text.
	ir accept: self with: html.
	"mkLines := editableContent text findTokens: (String with: Character cr with: Character lf).
	(mkLines notEmpty and: [ self isImage: mkLines first ])
		ifTrue: [ self renderFirstImageOn: html ].
	[ mkLines isNotEmpty ] whileTrue: [ self dispatchLineOn: html ]"
]

{ #category : #visitor }
PhlogTextRenderer >> visitAnchor: aPMdAnchor with: aWAHtmlCanvas [ 
	aWAHtmlCanvas anchor url: aPMdAnchor url string;
						with: aPMdAnchor altText string
]

{ #category : #'as yet unclassified' }
PhlogTextRenderer >> visitCarousel: aPMdCarousel with: aWAHtmlCanvas [
	aWAHtmlCanvas tbsContainerFluid 
		with: [ aWAHtmlCanvas div class: 'col-sm-2'.
			aWAHtmlCanvas div
				class: 'slick-carousel slide col-sm-8';
				attributeAt: 'data-ride' put: 'carousel';
				with: [ aPMdCarousel urls
						do: [ :url | 
							aWAHtmlCanvas div
								class: 'slick-carousel-item';
								with: [ aWAHtmlCanvas tbsImage
										class: 'img-responsive center';
										beRounded;
										altText: aPMdCarousel altText string;
										url: url string ] ] ] ]
]

{ #category : #visitor }
PhlogTextRenderer >> visitDocument: aPMdDocument with: aWAHtmlCanvas [ 
	aPMdDocument contentsDo: [ :element | element accept: self with: aWAHtmlCanvas ]
]

{ #category : #visitor }
PhlogTextRenderer >> visitEm: aPMdEm with: aWAHtmlCanvas [ 
	aWAHtmlCanvas emphasis: aPMdEm string asString
]

{ #category : #visitor }
PhlogTextRenderer >> visitImage: aPMdImage with: aWAHtmlCanvas [
	aWAHtmlCanvas tbsImage
		class: 'img-responsive center';
		beRounded;
		altText: aPMdImage altText string;
		url: aPMdImage url string
]

{ #category : #visitor }
PhlogTextRenderer >> visitParagraph: aPMdParagraph with: aWAHtmlCanvas [ 
	aWAHtmlCanvas paragraph with: [ aPMdParagraph contentsDo: [ :textElement | textElement accept: self with: aWAHtmlCanvas] ]
]

{ #category : #visitor }
PhlogTextRenderer >> visitString: aPMdString with: aWAHtmlCanvas [ 
	aWAHtmlCanvas render: aPMdString string
]

{ #category : #visitor }
PhlogTextRenderer >> visitStrong: aPMdStrong with: aWAHtmlCanvas [ 
	aWAHtmlCanvas strong: aPMdStrong string asString
]

{ #category : #visitor }
PhlogTextRenderer >> visitTextGroup: aPMdTextGroup with: aWAHtmlCanvas [
	aWAHtmlCanvas tbsContainerFluid
		with: [ aPMdTextGroup
				contentsDo: [ :aParagraph | aParagraph accept: self with: aWAHtmlCanvas ] ]
]

{ #category : #visitor }
PhlogTextRenderer >> visitTitle: aPMdTitle with: aWAHtmlCanvas [ 
	aWAHtmlCanvas heading with: [ aPMdTitle string contentsDo: [ :textElement | textElement accept: self with: aWAHtmlCanvas] ]
]
