as yet unclassified
headingOn: html
	html heading: (mkLines first trimLeft: [ :char | char = $# ]).
	mkLines removeFirst