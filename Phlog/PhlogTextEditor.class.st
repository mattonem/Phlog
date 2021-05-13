Class {
	#name : #PhlogTextEditor,
	#superclass : #WAComponent,
	#instVars : [
		'callback',
		'editableContent'
	],
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogTextEditor >> callback: anObject [
	callback := anObject
]

{ #category : #'as yet unclassified' }
PhlogTextEditor >> editableContent [
	^ editableContent
]

{ #category : #'as yet unclassified' }
PhlogTextEditor >> editableContent: anEditableContent [
	editableContent := anEditableContent
]

{ #category : #'as yet unclassified' }
PhlogTextEditor >> renderContentOn: html [
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
]
