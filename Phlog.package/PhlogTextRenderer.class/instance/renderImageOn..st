as yet unclassified
renderImageOn: html
	| currentLine args |
	currentLine := mkLines first.
	args := currentLine findBetweenSubstrings: '![]()'.
	html imageFluid
		altText: (args at: 1);
		url: (args at: 2).
	mkLines remove: currentLine.