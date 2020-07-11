as yet unclassified
ftInitFreeType: aLibrary
	<apicall: FTError 'FT_Init_FreeType' (FTLibrary*)>
	^ self externalCallFailed