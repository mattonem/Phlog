accessing
order
	^ order ifNil: [ order := SmallInteger maxVal ]