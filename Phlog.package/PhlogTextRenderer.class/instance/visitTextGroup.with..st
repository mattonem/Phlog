visitor
visitTextGroup: aPMdTextGroup with: aWAHtmlCanvas
	aWAHtmlCanvas tbsContainer
		with: [ aPMdTextGroup
				contentsDo: [ :aParagraph | aParagraph accept: self with: aWAHtmlCanvas ] ]