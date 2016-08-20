rendering
renderContentOn: html
	html
		container: [ html
				card: [ html cardImgTop url: 'http://www.seaside.st/styles/logo-plain.png'.
					html
						cardBlock: [ html
								heading: self requestContext request url. html
								paragraph: [ html text: 'To learn more about Seaside components follow the link to the book: '.
									html anchor
										url: 'http://book.seaside.st/book/fundamentals/rendering-components';
										with: 'Dynamic Web Development with Seaside'.
									html text: '.' ] ] ] ]