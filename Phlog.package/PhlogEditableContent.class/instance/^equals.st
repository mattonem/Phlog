accessing
= anObject
	^ (anObject class = self class) and: [ self key = anObject key ]