Class {
	#name : #PMdString,
	#superclass : #PMdElement,
	#instVars : [
		'string'
	],
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdString >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitString: self with: aWAHtmlCanvas
]

{ #category : #'as yet unclassified' }
PMdString >> from: aCollection [
	string := aCollection 
]

{ #category : #accessing }
PMdString >> string [
	^ string
]
