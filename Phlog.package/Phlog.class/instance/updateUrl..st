rendering
updateUrl: aUrl
	super updateUrl: aUrl.
	self selected ifNotNil: [ aUrl addToPath: (newsCollection indexOf: self selected) asString  ]
	