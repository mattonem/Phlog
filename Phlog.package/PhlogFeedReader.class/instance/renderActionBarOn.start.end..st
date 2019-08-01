rendering
renderActionBarOn: html start: start end: end
	html div
		class: 'btn-toolbar';
		with: [ self renderIndexButtonOn: html start: start end: end ]