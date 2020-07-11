as yet unclassified
example

	| face library glyph index |
	library := FTLibrary passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftInitFreeType: pointer).
		array at: 1].
	self checkError: (FreeTypeAPI new ftLibrarySetLcdFilter: library with: 1).
	
	face := FTFace passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftNewFace: library with: '/usr/share/fonts/truetype/open-sans/OpenSans-ExtraBold.ttf' with: 0 with: pointer).
		array at: 1].
	
	self checkError: (FreeTypeAPI new ftSetPixelSizes: face with: 0 with: 42).
	
	index := FreeTypeAPI new ftGetCharIndex: face with: (FTULong on: $H asInteger).
	self checkError: (FreeTypeAPI new ftLoadGlyph: face with: index with: FreeTypeAPI ftLoadTargetLCD).
	
	glyph := FTGlyph passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftGetGlyph: face unpack glyph with: pointer).
		self checkError: (FreeTypeAPI new ftGlyphToBitmap: pointer with: FTRenderMode lcd with: nil with: (FTBool on: 1)).
		array at: 1].
	
	glyph unpackAsBitmap bitmap asFormColor asMorph openInHand.
	^ glyph unpackAsBitmap