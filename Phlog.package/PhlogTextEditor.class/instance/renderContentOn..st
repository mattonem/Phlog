as yet unclassified
renderContentOn: html
	html
		tbsPanel: [ html
				form: [ html
						tbsFormGroup: [ html textArea
								value: editableContent text;
								class: 'form-control';
								callback: [ :value | 
									editableContent text: value.
									callback unselect ].
							html break.
							html submitButton class: 'btn btn-primary' ] ] ]