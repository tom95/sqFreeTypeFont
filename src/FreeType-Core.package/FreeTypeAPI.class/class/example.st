as yet unclassified
example

	| face library glyph index |
	library := FTLibrary allocate: 1.
	self checkError: (FreeTypeAPI new ftInitFreeType: library).
	library := library value.
	
	self checkError: (FreeTypeAPI new ftLibrarySetLcdFilter: library with: 1).
	
	face := FTFace allocate: 1.
	self checkError: (FreeTypeAPI new
		ftNewFace: library
		with: '/usr/share/fonts/truetype/open-sans/OpenSans-ExtraBold.ttf'
		with: 0
		with: face).
	face := face value.
	
	self checkError: (FreeTypeAPI new ftSetPixelSizes: face with: 0 with: 42).
	
	index := FreeTypeAPI new ftGetCharIndex: face with: (FTULong fromHandle: $H asInteger).
	self checkError: (FreeTypeAPI new ftLoadGlyph: face with: index with: FreeTypeAPI ftLoadTargetLCD).
	
	glyph := FTGlyph allocate: 1.
	self checkError: (FreeTypeAPI new ftGetGlyph: face unpack glyph with: glyph).
	self checkError: (FreeTypeAPI new
		ftGlyphToBitmap: glyph
		with: FTRenderMode lcd
		with: nil
		with: (FTBool fromHandle: 1)).
	
	glyph := glyph value.
	glyph unpackAsBitmap bitmap asFormColor asMorph openInHand.
	^ glyph unpackAsBitmap