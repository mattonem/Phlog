visitor
visitTextGroup: aPMdTextGroup with: aWAHtmlCanvas 
	aWAHtmlCanvas cardBlock with: [ aPMdTextGroup contentsDo: [ :aParagraph | aParagraph accept: self with: aWAHtmlCanvas] ]