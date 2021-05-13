Class {
	#name : #PhlogAdminFeedReader,
	#superclass : #PhlogFeedReader,
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogAdminFeedReader >> renderActionBarOn: html start: start end: end [
	html div
		class: 'btn-toolbar';
		with: [ self renderIndexButtonOn: html start: start end: end.
			self renderAddButton: html ]
]

{ #category : #'as yet unclassified' }
PhlogAdminFeedReader >> renderAddButton: html [
	html
		tbsButtonGroup: [ html anchor
				class: 'btn';
				callback: [ | newNews |
					newNews := newsCollection newContent.
					selectionCallback edit: newNews ];
				with: 'add' ]
]

{ #category : #'as yet unclassified' }
PhlogAdminFeedReader >> updateEditables [
	(editableCollection := newsCollection
		collect: [ :aNews | 
			PhlogAdminTextRenderer new
				editableContent: aNews;
				callback: selectionCallback ] ) asOrderedCollection
]
