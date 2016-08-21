rendering
renderContentOn: html
	html image
		class: 'top-image';
		url:
			'https://lh3.googleusercontent.com/VydAes2VTvZRQj5RwTFhBwLHYROx9RASc29H6Z8dl_0F_P9IymhEDfMchnLtKlvVQqVfNu7TIIpWI6u8iiMXpt2vBsvxGUDRRAnSYCOpOuLzRVdHiQv2JCGGWAVPbpMrm4C6Vv3ujih5PfVPKBY-5_oatdhVZF7ybs1BoTMOXVljeSHD-GSXUSeL-LDOFMuq30jDo03z98YYpqLPAyXdjtbQe4i2fmKHs0XfGLhEqb5hLX8ftt-yIqrGSA1Bu72p5huG39urjf6RcK5iawUzdrJ3Qpj9U0S_hWW5iv4vrn25qdq1ayhUgoq7jvyXoYloNp_I3u5-ykGVg8cxY99ZVo7-1CPb0LYLoFjZKNG5v_0wQfK0-6Ch0Omn7OQ3Ve0Tv27F-RrYsYRlPk3RbtAdRaetlpe2g20H3zjJsoLXs-Bc35PPOcUgahI3Rky4oWvh_6mD8-_nz-kluF3dvA3PCRARxHzLjYgWlERtO0_jaM-uKjCTglYu9eSbJIyZXNt9ln7Nl83BBlCM7O0bMyZfaAKnAkqPgcLfgf-n6OlJrqjiITs2WsHOLJv4QNTqntMWe6nBpcxvmD0C1BIObcGoVbQtc_ekenE=w1387-h596-no'.
	html
		container: [ html paragraph: self requestContext request url.
			html
				paragraph: [ html text: 'To learn more about Seaside components follow the link to the book: '.
					html anchor
						url: 'http://book.seaside.st/book/fundamentals/rendering-components';
						with: 'Dynamic Web Development with Seaside'.
					html text: '.' ].
			html render: content	
			].
		