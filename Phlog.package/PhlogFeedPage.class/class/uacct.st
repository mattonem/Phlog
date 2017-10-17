as yet unclassified
uacct
	| file |
	file := '../uacct' asFileReference.
	^ file exists
		ifTrue: [ file readStream contents ]
		ifFalse: [ '' ]