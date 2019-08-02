as yet unclassified
testRenderAnchor
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '[alt text](url)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="container"><p><a href="url">alt text</a></p></div>'