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
	self renderActionBarOn: html start: start end: end. 