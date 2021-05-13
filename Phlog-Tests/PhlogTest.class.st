"
A PhlogTest is a test class for testing the behavior of Phlog
"
Class {
	#name : #PhlogTest,
	#superclass : #TestCase,
	#instVars : [
		'body'
	],
	#category : #'Phlog-Tests'
}

{ #category : #'as yet unclassified' }
PhlogTest >> setUp [
	super setUp.
	Phlog defaultSetUp.
	WAServerManager default stopAll.
	WAServerManager default adaptors do: [:adapt | WAServerManager default unregister: adapt  ].
	ZnZincServerAdaptor startOn: 8443
]

{ #category : #'as yet unclassified' }
PhlogTest >> tearDown [
	super setUp.
	(ZnZincServerAdaptor startOn: 8443) stop
]

{ #category : #'as yet unclassified' }
PhlogTest >> testBasicGet [
	self assert: (ZnEasy get: 'http://admin:password@localhost:8443') isSuccess
]

{ #category : #'as yet unclassified' }
PhlogTest >> testCreateNewsAndDelete [
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
]
