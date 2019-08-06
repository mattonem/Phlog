as yet unclassified
renderActions: html
	^ html anchor
		class: 'btn';
		url: (self session url addToPath: editableContent key asString);
		with: 'view'