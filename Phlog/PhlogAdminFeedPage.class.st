Class {
	#name : #PhlogAdminFeedPage,
	#superclass : #PhlogFeedPage,
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogAdminFeedPage >> edit: aNews [
	content := PhlogTextEditor new
		editableContent: aNews;
		callback: self
]

{ #category : #rendering }
PhlogAdminFeedPage >> initContent [
	feed updateContentCollection.
	content := PhlogAdminFeedReader new
		newsCollection: feed;
		selectionCallback: self;
		feedsPerPage: (self application preferenceAt: #feedsPerPage)
]

{ #category : #'as yet unclassified' }
PhlogAdminFeedPage >> renderBackgroundOn: html [
	
]
