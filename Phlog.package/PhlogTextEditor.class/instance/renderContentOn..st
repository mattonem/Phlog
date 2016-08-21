as yet unclassified
renderContentOn: html
	html
		card: [ html
				cardBlock: [ html
						form: [ html
								formGroup: [ 
									html textArea
										value: editableText text;
										class: 'form-control';
										callback: [ :value | 
											editableText text: value.
											editableText editMode: false.
											editableText getUnselected ].
									html break.
									html submitButton class: 'btn btn-primary' ] ] ] ]