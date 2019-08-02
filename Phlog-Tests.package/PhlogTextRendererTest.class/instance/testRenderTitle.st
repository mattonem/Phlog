as yet unclassified
testRenderTitle
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '#Title'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container"><h1>Title</h1></div>'