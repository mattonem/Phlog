accessing
text: anObject
	text := anObject.
	storingFile ifNotNil: [  
	self store]