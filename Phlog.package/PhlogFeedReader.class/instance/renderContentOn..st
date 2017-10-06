rendering
renderContentOn: html
	| start end |
	"editableCollection reverseDo: [ :aNews | html render: aNews ]."
	start := editableCollection size - indexFrom.
	end := start - feedsPerPage + 1 max: 1.
	start to: end by: -1 do: [ :index | 
		| aNews |
		aNews := editableCollection at: index.
		html render: aNews ].
	html div
		with: [ start = editableCollection size
				ifFalse: [ html anchor
						callback: [ indexFrom := 0 ];
						with: '<<'.
					html span: '|'.
					html anchor
						callback: [ indexFrom := indexFrom - feedsPerPage max: 0 ];
						with: '<' ].
			(start = editableCollection size or: end = 1)
				ifFalse: [ html span: '|' ].
			end = 1
				ifFalse: [ html anchor
						callback: [ indexFrom := indexFrom + feedsPerPage ];
						with: '>'.
					html span: '|'.
					html anchor
						callback: [ indexFrom := editableCollection size - feedsPerPage ];
						with: '>>' ] ].
	html header: 'feeds per page: ' , feedsPerPage asString.
	html header: 'index: ' , indexFrom asString