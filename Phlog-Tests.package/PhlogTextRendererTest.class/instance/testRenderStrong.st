as yet unclassified
testRenderStrong
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '__strong__'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container"><p><strong>strong</strong></p></div>'