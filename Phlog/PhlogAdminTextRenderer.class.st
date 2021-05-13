Class {
	#name : #PhlogAdminTextRenderer,
	#superclass : #PhlogTextRenderer,
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogAdminTextRenderer >> renderActions: html [
	super renderActions: html.
	html anchor
		class: 'btn';
		callback: [ callback edit: editableContent ];
		with: 'edit'.
	 html anchor
	class: 'btn';
				callback: [ callback remove: editableContent ];
				with: 'remove' .
	 html anchor
	class: 'btn';
				callback: [ callback top: editableContent ];
				with: 'top' 
]
