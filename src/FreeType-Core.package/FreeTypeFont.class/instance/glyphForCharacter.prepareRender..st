as yet unclassified
glyphForCharacter: aCharacter prepareRender: aBoolean

	| glyph index |
	index := FreeTypeAPI new ftGetCharIndex: self facePtr with: (FTULong on: aCharacter asInteger).
	self checkError: (FreeTypeAPI new
		ftLoadGlyph: self facePtr
		with: index
		with: ((FreeTypeAPI ftLoadTargetLCD bitOr: FreeTypeAPI ftLoadForceAutohint) bitOr: (aBoolean ifTrue: [FreeTypeAPI ftLoadRender] ifFalse: [0]))).
	
	glyph := FTGlyph passArrayOfPointers: 1 to: [:pointer :array |
		self checkError: (FreeTypeAPI new ftGetGlyph: self facePtr unpack glyph with: pointer).
		array at: 1].
	
	^ glyph