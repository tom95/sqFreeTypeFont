as yet unclassified
ftLoadGlyph: aFace with: aGlyphIndexNumber with: aLoadFlagsNumber
	<apicall: FTError 'FT_Load_Glyph' (FTFace ulong int32_t)>
	^ self externalCallFailed