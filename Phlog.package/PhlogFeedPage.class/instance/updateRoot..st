rendering
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: (self application preferenceAt: #title).
	self renderGAnalyticsOn: anHtmlRoot