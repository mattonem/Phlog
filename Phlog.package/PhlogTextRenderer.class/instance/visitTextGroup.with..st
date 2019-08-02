visitor
visitTextGroup: aPMdTextGroup with: aWAHtmlCanvas
	aWAHtmlCanvas tbsContainerFluid
		with: [ aPMdTextGroup
				contentsDo: [ :aParagraph | aParagraph accept: self with: aWAHtmlCanvas ] ]