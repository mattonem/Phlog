as yet unclassified
listItemOn: html
	html listItem: (mkLines first trimLeft: [ :char | char = $* ]).
	mkLines removeFirst