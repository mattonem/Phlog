as yet unclassified
testCreateNewsAndDelete
	"driver := BPRemoteWebDriver
		withCapabilities: BPDesiredCapabilities chrome.
	driver get: 'http://admin:password@localhost:8443/admin/News'.
	(driver findElementByLinkText: 'add') click.
	(driver findElementByTagName: 'textArea') sendKeys: 'coucou'.
	(driver findElementByTagName: 'input') click.
	self
		assert: (driver findElementsByXPath: '//p[contains(text(), ""coucou"")]') size
		equals: 1.
	(driver findElementByLinkText: 'add') click.
	(driver findElementByTagName: 'textArea') sendKeys: 'coucou'.
	(driver findElementByTagName: 'input') click.
	self
		assert: (driver findElementsByXPath: '//p[contains(text(), ""coucou"")]') size
		equals: 2.
	(driver findElementByLinkText: 'remove') click.
	(driver findElementByLinkText: 'remove') click.
	self
		assert: (driver findElementsByXPath: '//p[contains(text(), ""coucou"")]') size
		equals: 0.
	driver quit"