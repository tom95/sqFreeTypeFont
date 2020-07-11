as yet unclassified
ftGetGlyph: aGlyphSlot with: aGlyph
	<apicall: FTError 'FT_Get_Glyph' (FTGlyphSlot FTGlyph*)>
	^ self externalCallFailed