as yet unclassified
bitmapGlyphForGlyph: aGlyph

	| bitmapGlyph |
	"glyph := FTGlyph passArrayOfPointers: 1 to: [:pointer :array |
		array at: 1 put: aGlyph.
		self checkError: (FreeTypeAPI new
			ftGlyphToBitmap: pointer
			with: (self subpixel ifTrue: [FTRenderMode lcd] ifFalse: [FTRenderMode normal])
			with: nil
			with: (FTBool on: 1)).
		array at: 1].
	"
	bitmapGlyph := aGlyph unpackAsBitmap.
	self assert: bitmapGlyph root format = FreeTypeAPI glyphFormatBitmap.
	^ bitmapGlyph