baseline
baseline: spec

	spec for: #common do: [
		spec package: 'FFI-Pools' with: [spec repository: 'http://source.squeakfoundation.org/FFI'].
		spec package: 'FFI-Kernel' with: [spec repository: 'http://source.squeakfoundation.org/FFI'].
		spec package: 'FFI-Tools' with: [spec repository: 'http://source.squeakfoundation.org/FFI'].
		spec package: 'FreeType-Core' with: [spec requires: #('FFI-Pools' 'FFI-Kernel' 'FFI-Tools')]]