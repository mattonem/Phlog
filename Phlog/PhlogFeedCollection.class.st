Class {
	#name : #PhlogFeedCollection,
	#superclass : #Object,
	#instVars : [
		'collection',
		'storeDirectory'
	],
	#category : #Phlog
}

{ #category : #'as yet unclassified' }
PhlogFeedCollection class >> on: aDirectory [
	^ self new initializeOn: aDirectory
]

{ #category : #catagory }
PhlogFeedCollection >> collect: aBlock [
  ^ collection collect: aBlock 

]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> contentCount [
	^ collection size
]

{ #category : #category }
PhlogFeedCollection >> forKey: aString [
	^ collection detect: [ :aNews | aNews key = aString ]
]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> initializeOn: aDirectory [
	aDirectory ensureCreateDirectory.
	storeDirectory := aDirectory.
	self updateContentCollection
]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> newContent [
	| newContent |
	newContent := PhlogEditableContent new storingDirectory: storeDirectory.
	newContent order: self contentCount.
	collection add: newContent.
	^ newContent
]

{ #category : #category }
PhlogFeedCollection >> printOn: aStream [
	aStream nextPutAll: storeDirectory  printString
]

{ #category : #category }
PhlogFeedCollection >> remove: aNews [
	collection remove: aNews.
	aNews delete

]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> sort [
	collection reSort
]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> storeAllContent [
	collection reverseWithIndexDo: [ :content :order | content order: order; store ]
]

{ #category : #'as yet unclassified' }
PhlogFeedCollection >> updateContentCollection [
	collection := (storeDirectory files
		collect: [ :file | PhlogEditableContent fromFile: file ]) asSortedCollection: [ :edit1 :edit2 | edit1 order < edit2 order ]
]
