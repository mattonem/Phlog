as yet unclassified
testRenderParagraph
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><p>paragraph</p></div>'