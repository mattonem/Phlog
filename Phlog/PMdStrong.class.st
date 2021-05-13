Class {
	#name : #PMdStrong,
	#superclass : #PMdElement,
	#instVars : [
		'string'
	],
	#category : #'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdStrong >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitStrong: self with: aWAHtmlCanvas
]

{ #category : #'as yet unclassified' }
PMdStrong >> from: aCollection [
	string := aCollection at: 2
]

{ #category : #accessing }
PMdStrong >> string [
	^ string
]
