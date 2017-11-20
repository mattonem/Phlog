baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'Seaside3' with: [
					spec 
						loads: #'default';
						repository: 'github://SeasideSt/Seaside/repository'].
			spec project: 'Soup' with: #stable.
			spec
				project: 'Soup'
				with: [ spec
						className: 'ConfigurationOfSoup';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main' ].
			spec project: 'PetitParser' with: #stable.
			spec
				project: 'PetitParser'
				with: [ spec
						className: 'ConfigurationOfPetitParser';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main' ].
			spec
				project: 'NeoJSON'
				with: [ spec
						className: 'ConfigurationOfNeoJSON';
						versionString: #stable;
						repository: 'http://mc.stfx.eu/Neo' ].
			spec baseline: 'OpenSansEmojiInstaller'
				with: [ spec 
					repository: 'github://mattonem/OpenSansEmojiInstaller:master/' ;
					loads: #'default' ].
			spec
				package: 'Phlog';
				package: 'PhlogJs';
				yourself ]
