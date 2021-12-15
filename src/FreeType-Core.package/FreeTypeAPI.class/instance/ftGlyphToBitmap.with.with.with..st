as yet unclassified
ftGlyphToBitmap: glyph with: renderMode with: originVector with: destroyBool
	<apicall: FTError 'FT_Glyph_To_Bitmap' (void* FTRenderMode FTVector* FTBool)>
	^ self externalCallFailed