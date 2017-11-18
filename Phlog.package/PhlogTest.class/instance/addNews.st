adding
addNews
	| host req nbNews anchors add req2 |
	(driver findElementByLinkText: 'add') click.
	(driver findElementByXPath: '//form//input') click.
		
