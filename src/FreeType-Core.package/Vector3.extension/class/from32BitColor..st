*FreeType-Core
from32BitColor: aNumber

	^ (((aNumber bitAnd: 16rff0000) bitShift: -16) / 255.0) @
		(((aNumber bitAnd: 16r00ff00) bitShift: -8) / 255.0) @
		((aNumber bitAnd: 16r0000ff) / 255.0)