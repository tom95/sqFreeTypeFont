as yet unclassified
glyphCacheAt: aString

	^ (GlyphCaches ifNil: [GlyphCaches := Dictionary new]) at: aString ifAbsentPut: [FreeTypeGlyphCache new]