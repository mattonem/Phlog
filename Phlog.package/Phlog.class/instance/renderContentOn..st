rendering
renderContentOn: html
	html image
		url: PhlogBootstrapLibrary / #ArbcJpg;
		class: 'top-image'.
	html div class: 'log top-image-margin'.
	html
		container: [ html paragraph: self requestContext request url.
			html
				paragraph: [ html text: 'To learn more about Seaside components follow the link to the book: '.
					html anchor
						url: 'http://book.seaside.st/book/fundamentals/rendering-components';
						with: 'Dynamic Web Development with Seaside'.
					html text: '.' ].
			html render: content ]