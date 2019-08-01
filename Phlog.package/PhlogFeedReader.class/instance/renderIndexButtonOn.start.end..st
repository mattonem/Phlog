rendering
renderIndexButtonOn: html start: start end: end
	html div
		class: 'btn-group';
		with: [ start = editableCollection size
				ifFalse: [ html anchor
						class: 'btn btn-default';
						callback: [ indexFrom := 0 ];
						with: '<<'.
					html anchor
						class: 'btn btn-default';
						callback: [ indexFrom := indexFrom - feedsPerPage max: 0 ];
						with: '<' ].
			end = 1
				ifFalse: [ html anchor
						class: 'btn btn-default';
						callback: [ indexFrom := indexFrom + feedsPerPage ];
						with: '>'.
					html anchor
						class: 'btn btn-default';
						callback: [ indexFrom := editableCollection size - feedsPerPage ];
						with: '>>' ] ]