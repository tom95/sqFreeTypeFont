as yet unclassified
fields

	^ #(
		(numFaces FTLong)
		(faceIndex FTLong)
		
		(faceFlags FTLong)
		(styleFlags FTLong)
		
		(numGlyphs FTLong)
		
		(familyName 'char*')
		(styleName 'char*')
		
		(numFixedSizes FTLong)
		(availableSizes 'void*') "FT_Bitmap_Size*"
		
		(numCharmaps FTLong)
		(charmaps 'void*') "FT_CharMap*"
		
		(generic 'void*') "FT_GENERIC.data"
		(genericFinalizer 'void*') "FT_GENERIC.finalizer"
		
		(bbox FTBBox)
		(unitsPerEM ushort)
		(ascender short)
		(descender short)
		(height short)
		(maxAdvanceWidth short)
		(maxAdvanceHeight short)
		(underlinePosition short)
		(underlineThickness short)
		(glyph FTGlyphSlot)
		(size 'FTSizeRec*') "FT_SIZE"
		(charmap 'void*') "FT_CharMap"
		
		"private fields"
		(driver 'void*')
		(memory 'void*')
		(stream 'void*')
		(sizesListHead 'void*')
		(sizesListTail 'void*')
		(autohint 'void*')
		(autohintFinalizer 'void*')
		(extensions 'void*')
		(internal 'void*')
	)