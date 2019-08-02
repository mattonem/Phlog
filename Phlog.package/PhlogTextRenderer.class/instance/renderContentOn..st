as yet unclassified
renderContentOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelBody: [ self renderEditableContentOn: html.
					html break.
					html tbsButtonGroup: [ self renderActions: html ] ] ]