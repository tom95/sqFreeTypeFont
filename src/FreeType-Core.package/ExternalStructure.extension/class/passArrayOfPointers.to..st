*FreeType-Core
passArrayOfPointers: aNumber to: aBlock

	| ptr |
	ptr := ExternalData fromHandle: (ExternalAddress allocate: self externalType asNonPointerType byteSize * aNumber) type: self externalType size: aNumber.
	
	^ aBlock value: (self fromHandle: ptr getHandle) value: ptr