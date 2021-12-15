as yet unclassified
applyPointSize: aNumber

	self assert: face notNil.
	self checkError: (FreeTypeAPI new ftSetCharSize: face with: (FTF26Dot6 fromHandle: 0) with: (FTF26Dot6 fromHandle: aNumber * 64) with: 96 with: 0).
	pointSize := aNumber.
	
	height := self convertUnit: self face size metrics height value.
	ascent := self convertUnit: self face size metrics ascender value.
	descent := (self convertUnit: self face size metrics descender value) negated