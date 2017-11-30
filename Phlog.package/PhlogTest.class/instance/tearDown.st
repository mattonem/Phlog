as yet unclassified
tearDown
	super setUp.
	(ZnZincServerAdaptor startOn: 8443) stop
