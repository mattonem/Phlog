as yet unclassified
renderContentOn: html
	html article
		with: [ html tbsPanel beDefault
				with: [ html tbsPanelBody: [ self renderEditableContentOn: html ].
					html break.
					html tbsButtonGroup: [ self renderActions: html ] ] ]