Class {
	#name : #PMdEm,
	#superclass : #PMdElement,
	#instVars : [
		'string'
	],
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdEm >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitEm: self with: aWAHtmlCanvas 
]

{ #category : #'as yet unclassified' }
PMdEm >> from: aCollection [
	string := String newFrom: (aCollection at: 2)
]

{ #category : #accessing }
PMdEm >> string [
	^ string
]
