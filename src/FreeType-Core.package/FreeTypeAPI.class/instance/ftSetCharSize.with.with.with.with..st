as yet unclassified
ftSetCharSize: face with: charWidth with: charHeight with: horzResolution with: vertResoltuion
	<apicall: FTError 'FT_Set_Char_Size' (FTFace int64_t int64_t ulong ulong)>
	^ self externalCallFailed