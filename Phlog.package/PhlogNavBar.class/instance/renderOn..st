as yet unclassified
renderOn: html
	html navigation
		style: 'margin-bottom: 10px';
		class: 'navbar navbar-light bg-faded';
		with: [ html div
				class: 'nav navbar-nav';
				with: [ self categories
						associationsDo: [ :anAssociation | 
							(self isActiveCategory: anAssociation)
								ifTrue: [ html anchor
										class: 'nav-item nav-link active';
										url: (self session url parsePath: anAssociation key);
										with: anAssociation value ]
								ifFalse: [ html anchor
										class: 'nav-item nav-link';
										url: (self session url parsePath: anAssociation key);
										with: anAssociation value ] ] ] ]
	"
html anchor
						class: 'nav-item nav-link active';
						url: (self session url parsePath: '/phlog');
						with: 'News'.
					html anchor
						class: 'nav-item nav-link';
						url: (self session url parsePath: '/about');
						with: 'About' ]"