grammar
image
	^ ('![' asParser , altText , '](' asParser , url , ')' asParser )
		==> [ :node | PMdImage from: node ]