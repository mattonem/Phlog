as yet unclassified
renderContentOn: html
	html
		form: [ html
				formGroup: [ html textArea
						value: editableText string;
						class: 'form-control';
						callback: [ :value | editableText string: value.
							editableText editMode: false ].
					html break.
					html submitButton class: 'btn btn-primary' ] ]