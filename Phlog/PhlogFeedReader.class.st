Class {
	#name : #PhlogFeedReader,
	#superclass : #WAComponent,
	#instVars : [
		'newsCollection',
		'editableCollection',
		'selectionCallback',
		'indexFrom',
		'feedsPerPage'
	],
	#category : 'Phlog-SeasideComponent'
}

{ #category : #rendering }
PhlogFeedReader >> children [
	^ Array withAll: editableCollection
]

{ #category : #accessing }
PhlogFeedReader >> feedsPerPage [
	^ feedsPerPage
]

{ #category : #accessing }
PhlogFeedReader >> feedsPerPage: anObject [
	feedsPerPage := anObject
]

{ #category : #rendering }
PhlogFeedReader >> initialize [
	super initialize.
	indexFrom := 0.
]

{ #category : #rendering }
PhlogFeedReader >> newsCollection: aColl [
	newsCollection := aColl.
	self updateEditables.
]

{ #category : #rendering }
PhlogFeedReader >> renderActionBarOn: html start: start end: end [
	html tbsContainerFluid
		class: 'btn-toolbar';
		with: [ self renderIndexButtonOn: html start: start end: end ]
]

{ #category : #rendering }
PhlogFeedReader >> renderContentOn: html [
	| start end |
	"editableCollection reverseDo: [ :aNews | html render: aNews ]."
	start := editableCollection size - indexFrom.
	end := start - feedsPerPage + 1 max: 1.
	html
		tbsContainerFluid: [ start to: end by: -1 do: [ :index | 
				| aNews |
				aNews := editableCollection at: index.
				html render: aNews ].
			self renderActionBarOn: html start: start end: end ]
]

{ #category : #rendering }
PhlogFeedReader >> renderIndexButtonOn: html start: start end: end [
	html
		tbsButtonGroup: [ start = editableCollection size
				ifFalse: [ html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := 0 ];
						with: '<<'.
					html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := indexFrom - feedsPerPage max: 0 ];
						with: '<' ].
			end = 1
				ifFalse: [ html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := indexFrom + feedsPerPage ];
						with: '>'.
					html anchor
						class: 'btn btn-primary';
						callback: [ indexFrom := editableCollection size - feedsPerPage ];
						with: '>>' ] ]
]

{ #category : #rendering }
PhlogFeedReader >> selectionCallback: anObject [
	selectionCallback := anObject.
	self updateEditables.
]

{ #category : #rendering }
PhlogFeedReader >> updateEditables [
	editableCollection := newsCollection
		collect: [ :aNews | PhlogTextRenderer new editableContent: aNews; callback: selectionCallback ]

]
