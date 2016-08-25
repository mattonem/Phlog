rendering
initialize
	super initialize.
	feed := self application preferenceAt: #feed.
	self initContent