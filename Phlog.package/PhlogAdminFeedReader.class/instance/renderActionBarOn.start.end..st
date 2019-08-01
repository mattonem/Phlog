as yet unclassified
renderActionBarOn: html start: start end: end
	html div
		class: 'btn-toolbar';
		with: [ self renderIndexButtonOn: html start: start end: end.
			self renderAddButton: html ]