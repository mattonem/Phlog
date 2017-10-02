accessing
get: host
	|res|
	res := (ZnEasy get: host) contents.
	^ Soup fromString: res
