as yet unclassified
loadFont: aFont size: aNumber

	library := FTLibrary allocate: 1.
	self checkError: (FreeTypeAPI new ftInitFreeType: library).
	library := library value.
	
	self checkError: (FreeTypeAPI new ftLibrarySetLcdFilter: library with: 1).
	
	face := FTFace allocate: 1.
	self checkError: (FreeTypeAPI new ftNewFace: library with: aFont with: 0 with: face).
	face := face value.
	
	self applyPointSize: aNumber.
	
	familyName := self face familyName fromCString.
	subfamilyName := self face styleName fromCString.
	
	glyphCache := FreeTypeFontRegistry glyphCacheAt: aFont, ':', aNumber