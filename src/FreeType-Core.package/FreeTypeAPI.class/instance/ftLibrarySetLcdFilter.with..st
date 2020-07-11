as yet unclassified
ftLibrarySetLcdFilter: aLibrary with: aFilter
	<apicall: FTError 'FT_Library_SetLcdFilter' (FTLibrary long)>
	^ self externalCallFailed