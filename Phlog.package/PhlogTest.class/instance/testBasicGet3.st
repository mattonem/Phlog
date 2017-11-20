tests
testBasicGet3
	| req anchors req2 host remove |
	host := 'http://admin:password@localhost:8443/admin/News'.
	self addNews.
	(driver findElementByLinkText: 'remove') click. 
	req := self get: host.
	self assert: (self nbCard: req) equals: 0.