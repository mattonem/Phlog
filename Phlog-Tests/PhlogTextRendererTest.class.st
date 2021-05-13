"
A PhlogTextRendererTest is a test class for testing the behavior of PhlogTextRenderer
"
Class {
	#name : #PhlogTextRendererTest,
	#superclass : #TestCase,
	#category : 'Phlog-Tests'
}

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderAnchor [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '[alt text](url)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p><a href="url">alt text</a></p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderBadImage [
	| aString aContent renderer |
	aContent := PhlogEditableContent new
		text: 'paragraph' , Character cr asString , '!(imageurl]'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p>paragraph</p><p>!(imageurl]</p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderCarousel [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph' , Character cr asString , '![carousel](url)(url2)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p>paragraph</p></div><div class="container-fluid"><div class="col-sm-2"></div><div class="slick-carousel slide col-sm-8" data-ride="carousel"><div class="slick-carousel-item"><img alt="carousel" class="img-responsive center img-rounded" src="url"/></div><div class="slick-carousel-item"><img alt="carousel" class="img-responsive center img-rounded" src="url2"/></div></div></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderEm [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '_em_'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p><em>em</em></p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderFirstImage [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '![image](url)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	true ifTrue: [ ^ self  ].
	self assert: aString equals: '<img alt="image" class="img-fluid card-img-top img-fluid" src="url"/>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderImage [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph' , Character cr asString , '![ima ge](url)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p>paragraph</p></div><img alt="ima ge" class="img-responsive center img-rounded" src="url"/>'

]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderParagraph [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p>paragraph</p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderParagraph2 [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph' , Character cr asString , Character cr asString, 'para2'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals:  '<div class="container-fluid"><p>paragraph</p><p>para2</p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderStrong [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '__strong__'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><p><strong>strong</strong></p></div>'
]

{ #category : #'as yet unclassified' }
PhlogTextRendererTest >> testRenderTitle [
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '#Title'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container-fluid"><h1>Title</h1></div>'
]
