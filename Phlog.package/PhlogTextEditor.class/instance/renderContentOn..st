rendering
renderContentOn: html
	html
		card: [ html
				cardBlock: [ html
						form: [ html
								formGroup: [ 
									html textArea
										value: editableContent text;
										class: 'form-control';
										callback: [ :value | 
											editableContent text: value.
											callback  store: editableContent .
											callback unselect ].
									html break.
									html submitButton class: 'btn btn-primary' ] ] ] ]