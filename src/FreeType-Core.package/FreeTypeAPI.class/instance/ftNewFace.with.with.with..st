as yet unclassified
ftNewFace: aLibrary with: aPathString with: aFaceIndexNumber with: aFace
	<apicall: FTError 'FT_New_Face' (FTLibrary char* long FTFace*)>
	^ self externalCallFailed