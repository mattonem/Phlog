visitor
visitTitle: aPMdTitle with: aWAHtmlCanvas 
	aWAHtmlCanvas heading with: [ aPMdTitle string contentsDo: [ :textElement | textElement accept: self with: aWAHtmlCanvas] ]