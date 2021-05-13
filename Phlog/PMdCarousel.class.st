Class {
	#name : #PMdCarousel,
	#superclass : #PMdElement,
	#instVars : [
		'urls',
		'altText'
	],
	#category : 'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdCarousel >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitCarousel: self with: aWAHtmlCanvas 
]

{ #category : #'as yet unclassified' }
PMdCarousel >> altText [
	^ altText
]

{ #category : #'as yet unclassified' }
PMdCarousel >> from: aCollection [ 
	altText := aCollection at: 2.
	urls := (aCollection at: 4) collect: #second.
]

{ #category : #'as yet unclassified' }
PMdCarousel >> urls [
	^ urls
]
