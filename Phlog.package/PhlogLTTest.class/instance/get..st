accessing
get: host
	|res|
	res := (ZnEasy get: host) contents.
	self log: res.
	^ Soup fromString: res
