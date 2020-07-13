as yet unclassified
loadFont: aFont size: aNumber

	library := FTLibrary passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftInitFreeType: pointer).
		array at: 1].
	
	self checkError: (FreeTypeAPI new ftLibrarySetLcdFilter: library with: 1).
	
	face := FTFace passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftNewFace: library with: aFont with: 0 with: pointer).
		array at: 1].
	
	self applyPointSize: aNumber.
	
	familyName := self face familyName.
	subfamilyName := self face styleName.
	
	glyphCache := FreeTypeFontRegistry glyphCacheAt: aFont, ':', aNumber