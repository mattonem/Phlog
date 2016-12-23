as yet unclassified
addNews
	| host req nbNews anchors add req2 |
	host := 'http://admin:password@localhost:8443/admin/News'.
	req := self get: host.
	nbNews := (req findAllTagsByClass: 'card') size.
	anchors := req findAllTags: 'a'.
	add := (anchors select: [ :ancho | (ancho findString: 'add') notNil ]) at: 1.
	req2 := self get: host , (add attributeAt: 'href')