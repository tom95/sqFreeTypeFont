as yet unclassified
glyphForCharacter: aCharacter prepareRender: aBoolean do: aBlock

	| glyph index ret |
	index := FreeTypeAPI new
		ftGetCharIndex: self facePtr
		with: (FTULong fromHandle: aCharacter asInteger).
	self checkError: (FreeTypeAPI new
		ftLoadGlyph: self facePtr
		with: index
		with: ((FreeTypeAPI ftLoadTargetLCD bitOr: FreeTypeAPI ftLoadForceAutohint) bitOr: (aBoolean ifTrue: [FreeTypeAPI ftLoadRender] ifFalse: [0]))).
	
	glyph := FTGlyph allocate: 1.
	self checkError: (FreeTypeAPI new ftGetGlyph: self facePtr unpack glyph with: glyph).
	glyph := glyph value.
	
	ret := aBlock value: glyph.
	FreeTypeAPI new ftDoneGlyph: glyph.
	^ ret