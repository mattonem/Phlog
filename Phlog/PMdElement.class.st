Class {
	#name : #PMdElement,
	#superclass : #Object,
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdElement class >> from: aCollection [ 
	^ self new from: aCollection
]

{ #category : #'as yet unclassified' }
PMdElement >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	self subclassResponsibility
]
