rendering
updateUrl: aUrl
	super updateUrl: aUrl.
	self selected
		ifTrue: [ aUrl addToPath: content editableContent key asString ]