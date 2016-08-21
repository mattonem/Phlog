rendering
updateUrl: aUrl
	super updateUrl: aUrl.
	self selected ifNotNil: [ aUrl addToPath: (editableCollection indexOf: self selected) asString  ]
	