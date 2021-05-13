Class {
	#name : #PMdImage,
	#superclass : #PMdElement,
	#instVars : [
		'url',
		'altText'
	],
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdImage >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitImage: self with: aWAHtmlCanvas 
]

{ #category : #accessing }
PMdImage >> altText [
	^ altText
]

{ #category : #'as yet unclassified' }
PMdImage >> from: aCollection [ 
	altText := aCollection at: 2.
	url := aCollection at: 4
]

{ #category : #accessing }
PMdImage >> url [
	^ url
]
