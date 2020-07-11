as yet unclassified
formForCharacter: aCharacter

	^ bitmapCache at: aCharacter ifAbsentPut: [ | glyph |
		glyph := self bitmapGlyphForGlyph: (self glyphForCharacter: aCharacter prepareRender: true).
		(glyph bitmap asFormColor: self subpixel)
			offset: glyph left @ glyph top;
			advance: (self convert16x16: glyph root advance x value) @ (self convert16x16: glyph root advance y value)
			yourself]