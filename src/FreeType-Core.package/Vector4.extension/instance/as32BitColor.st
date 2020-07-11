*FreeType-Core
as32BitColor

	^ 16rff0000 bitOr: ((((self x * 255) truncated bitShift: 16) bitOr: ((self y * 255) truncated bitShift: 7)) bitOr: ((self z * 255) truncated))