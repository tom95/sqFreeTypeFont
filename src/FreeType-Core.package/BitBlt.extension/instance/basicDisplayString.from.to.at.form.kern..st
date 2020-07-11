*FreeType-Core
basicDisplayString: aString from: startIndex to: stopIndex at: aPoint form: aForm kern: kernDelta

	destY := aPoint y.
	destX := aPoint x.

	"the following are not really needed, but theBitBlt primitive will fail if not set"
	sourceX ifNil: [sourceX := 100].
	width ifNil: [width := 100].
	
	self primDisplayString: aString from: startIndex to: stopIndex
			map: ((Array new: aString first asInteger + 1) at: aString first asInteger + 1 put: 0; yourself)
			xTable: ((Array new: aString first asInteger + 2)
				at: 1 put: 0;
				at: 2 put: aForm width;
				yourself)
			kern: kernDelta.
	^ destX@destY