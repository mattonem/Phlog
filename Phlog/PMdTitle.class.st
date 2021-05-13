Class {
	#name : #PMdTitle,
	#superclass : #PMdElement,
	#instVars : [
		'string'
	],
	#category : #'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdTitle >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitTitle: self with: aWAHtmlCanvas
]

{ #category : #'as yet unclassified' }
PMdTitle >> from: aCollection [
	string := aCollection at: 2
]

{ #category : #accessing }
PMdTitle >> string [
	^ string
]
