grammar
image
	^ '![' asParser, altText  , '](' asParser, url  ,')' asParser end ==> [ :node | 
		PMdImage from: node ]