as yet unclassified
renderFirstImageOn: html
	| args |
	args := mkLines first findBetweenSubStrs: '![]()'.
	html cardImgTop
		class: 'img-fluid';
		altText: (args at: 1);
		url: (args at: 2).
	mkLines removeFirst