as yet unclassified
setUp
	super setUp.
	Phlog defaultSetUp.
	WAServerManager default stopAll.
	WAServerManager default adaptors do: [:adapt | WAServerManager default unregister: adapt  ].
	ZnZincServerAdaptor startOn: 8443