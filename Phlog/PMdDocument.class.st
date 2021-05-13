Class {
	#name : #PMdDocument,
	#superclass : #PMdElement,
	#instVars : [
		'content'
	],
	#category : #'Phlog-Markdown'
}

{ #category : #'as yet unclassified' }
PMdDocument >> accept: aPhlogTextRenderer with: aWAHtmlCanvas [ 
	aPhlogTextRenderer visitDocument: self with: aWAHtmlCanvas
]

{ #category : #'as yet unclassified' }
PMdDocument >> contentsDo: aBlockClosure [ 
	content do: aBlockClosure
]

{ #category : #'as yet unclassified' }
PMdDocument >> first [
	^ content first
]

{ #category : #'as yet unclassified' }
PMdDocument >> from: node [
	content := node
]
