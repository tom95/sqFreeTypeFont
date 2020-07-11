*FreeType-Core
as32BitColor

	^ 16rff000000 bitOr: ((((self x * 255) truncated bitShift: 16) bitOr: ((self y * 255) truncated bitShift: 8)) bitOr: ((self z * 255) truncated))