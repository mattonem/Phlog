as yet unclassified
renderContentOn: html
	html
		form: [ html
				formGroup: [ html textArea
						value: editableText text;
						class: 'form-control';
						callback: [ :value | 
							editableText text: value.
							editableText editMode: false ].
					html break.
					html submitButton class: 'btn btn-primary' ] ]