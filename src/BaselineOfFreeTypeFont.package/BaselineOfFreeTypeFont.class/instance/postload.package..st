baseline
postload: loader package: packageSpec

	ExternalStructure allStructuresInCompilationOrder do: [:class |
		class category = 'FreeType-Core' ifTrue: [class compileFields]]