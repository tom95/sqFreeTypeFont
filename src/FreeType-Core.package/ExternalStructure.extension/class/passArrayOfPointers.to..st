*FreeType-Core
passArrayOfPointers: aNumber to: aBlock

	| ptr |
	ptr := (ExternalData fromHandle: (ExternalAddress allocate: self byteSize * aNumber) type: self externalType)
		size: aNumber;
		yourself.
	
	^ aBlock value: (self fromHandle: ptr getHandle) value: ptr