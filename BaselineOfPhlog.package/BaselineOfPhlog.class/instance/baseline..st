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
						loads: #default ].
			spec
				baseline: 'NeoJSON'
				with: [ spec
						repository: 'github://svenvc/NeoJSON/repository';
						loads: #default ].
			spec
				baseline: 'FSFileLibrary'
				with: [ spec
						repository: 'github://mattonem/SeasideFileLibraries:release-2/src';
						loads: #default ].
			spec
				package: 'Phlog';
				package: 'PhlogJs';
				yourself ]