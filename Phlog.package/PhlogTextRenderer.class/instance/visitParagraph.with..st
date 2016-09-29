visitor
visitParagraph: aPMdParagraph with: aWAHtmlCanvas 
	aWAHtmlCanvas paragraph with: [ aPMdParagraph contentsDo: [ :textElement | textElement accept: self with: aWAHtmlCanvas] ]