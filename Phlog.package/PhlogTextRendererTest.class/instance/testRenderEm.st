as yet unclassified
testRenderEm
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '_em_'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><p><em>em</em></p></div>'