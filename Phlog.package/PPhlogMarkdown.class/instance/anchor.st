grammar
anchor
	^ $[ asParser, altText  , '](' asParser, url  ,$) asParser ==> [ :node | 
		PMdAnchor from: node ]