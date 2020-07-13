baseline
postload: loader package: packageSpec

	ExternalStructure allSubclassesDo: [:class |
		class category = 'FreeType-Core' ifTrue: [
			class compileFields]]