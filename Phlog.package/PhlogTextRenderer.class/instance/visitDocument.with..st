visitor
visitDocument: aPMdDocument with: aWAHtmlCanvas 
	aPMdDocument contentsDo: [ :element | element accept: self with: aWAHtmlCanvas ]