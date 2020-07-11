as yet unclassified
ftLoadChar: aFace with: aCharacter with: aLoadFlagsNumber
	<apicall: FTError 'FT_Load_Char' (FTFace ulonglong int32_t)>
	^ self externalCallFailed