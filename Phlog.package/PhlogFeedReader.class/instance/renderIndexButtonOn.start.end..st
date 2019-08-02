rendering
renderIndexButtonOn: html start: start end: end
	html
		tbsButtonGroup: [ start = editableCollection size
				ifFalse: [ html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := 0 ];
						with: '<<'.
					html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := indexFrom - feedsPerPage max: 0 ];
						with: '<' ].
			end = 1
				ifFalse: [ html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := indexFrom + feedsPerPage ];
						with: '>'.
					html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := editableCollection size - feedsPerPage ];
						with: '>>' ] ]