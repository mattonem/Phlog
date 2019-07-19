baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
				with: [ spec
						repository: 'github://SeasideSt/Seaside:master/repository';
						loads: #default ].
			spec
				baseline: 'PetitParser'
				with: [ spec
						repository: 'github://moosetechnology/PetitParser/src';
						loads: #Core ].
			spec
				baseline: 'NeoJSON'
				with: [ spec
						repository: 'github://svenvc/NeoJSON/repository';
						loads: #core ].
			spec
				baseline: 'FSFileLibrary'
				with: [ spec
						repository: 'github://mattonem/SeasideFileLibraries:master/src';
						loads: #default ].
			spec
				package: 'Phlog';
				package: 'PhlogJs';
				yourself ]