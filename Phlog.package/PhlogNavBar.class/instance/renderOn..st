as yet unclassified
renderOn: html
	html navigation
		class: 'navbar navbar-default';
		with: [ html tbsNav
				beNavbarNavigation;
				with: [ self categories
						associationsDo: [ :anAssociation | 
							(self isActiveCategory: anAssociation)
								ifTrue: [ html tbsNavItem beActive
										with: [ html anchor
												url: (self session url parsePath: anAssociation key);
												with: anAssociation value ] ]
								ifFalse: [ html tbsNavItem
										with: [ html anchor
												url: (self session url parsePath: anAssociation key);
												with: anAssociation value ] ] ] ] ]