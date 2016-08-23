as yet unclassified
tearDown
	super setUp.
	(PhlogServerAdaptor startOn: 8080) stop.
	(PhlogServerAdaptor startOn: 8443) stop