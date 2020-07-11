as yet unclassified
ftGetCharIndex: aFace with: aCharCodeNumber
	<apicall: ulong 'FT_Get_Char_Index' (FTFace FTULong)>
	^ self externalCallFailed