as yet unclassified
formForCharacter: aCharacter

	^ glyphCache at: aCharacter ifAbsentPut: [
		self glyphForCharacter: aCharacter prepareRender: true do: [:glyph | | bitmapGlyph | 
			bitmapGlyph := glyph unpackAsBitmap.
			(bitmapGlyph bitmap asFormColor: self subpixel)
				offset: bitmapGlyph left @ bitmapGlyph top;
				advance: (self convert16x16: bitmapGlyph root advance x value) @ (self convert16x16: bitmapGlyph root advance y value)
				yourself]]