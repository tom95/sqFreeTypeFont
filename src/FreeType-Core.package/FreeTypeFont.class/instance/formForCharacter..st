as yet unclassified
formForCharacter: aCharacter

	^ FreeTypeFontRegistry glyphCacheAt: self filename size: self pointSize character: aCharacter ifAbsentPut: [ | glyph |
		glyph := (self glyphForCharacter: aCharacter prepareRender: true) unpackAsBitmap.
		(glyph bitmap asFormColor: self subpixel)
			offset: glyph left @ glyph top;
			advance: (self convert16x16: glyph root advance x value) @ (self convert16x16: glyph root advance y value)
			yourself]