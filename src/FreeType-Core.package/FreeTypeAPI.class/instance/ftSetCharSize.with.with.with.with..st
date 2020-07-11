as yet unclassified
ftSetCharSize: face with: charWidth with: charHeight with: horzResolution with: vertResoltuion
	<apicall: FTError 'FT_Set_Char_Size' (FTFace FTF26Dot6 FTF26Dot6 ulong ulong)>
	^ self externalCallFailed