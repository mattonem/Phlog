as yet unclassified
renderContentOn: html
	html
		card: [ html
				cardBlock: [ html
						form: [ html
								formGroup: [ html textInput
										value: editableText imageUrl;
										class: 'form-control';
										callback: [ :value | 
											editableText imageUrl: value.
											editableText editMode: false ].
									html textArea
										value: editableText text;
										class: 'form-control';
										callback: [ :value | 
											editableText text: value.
											editableText editMode: false.
											editableText getUnselected ].
									html break.
									html submitButton class: 'btn btn-primary' ] ] ] ]