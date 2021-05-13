Class {
	#name : #PMdAnchor,
	#superclass : #PMdElement,
	#instVars : [
		'altText',
		'url'
	],
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdAnchor >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitAnchor: self with: aWAHtmlCanvas
]

{ #category : #accessing }
PMdAnchor >> altText [
	^ altText
]

{ #category : #'as yet unclassified' }
PMdAnchor >> from: aCollection [ 
	altText := aCollection at:2.
	url := aCollection at: 4
]

{ #category : #accessing }
PMdAnchor >> url [
	^ url
]
