accessing
blitColored: aColor on: aDisplayContext at: aPoint

	| buffer pitch peek poker foregroundBlue foregroundGreen foregroundRed |
	buffer := self buffer getHandle.
	pitch := self pitch.
	
	poker := BitBlt bitPokerToForm: aDisplayContext destForm.
	poker clipRect: aDisplayContext clipRect.
	peek := BitBlt bitPeekerFromForm: aDisplayContext destForm.
	
	foregroundRed := aColor privateRed // 4.
	foregroundGreen := aColor privateGreen // 4.
	foregroundBlue := aColor privateBlue // 4.
	
	0 to: self width // 3 - 1 do: [:x |
		0 to: self rows - 1 do: [:y | | r g b base |
			base := y * pitch + (x * 3).
			r := buffer integerAt:  base + 1 size: 1 signed: false.
			g := buffer integerAt: base + 2 size: 1 signed: false.
			b := buffer integerAt: base + 3 size: 1 signed: false.
			
			r + g + b = 0
				ifFalse: [ | backgroundColor current |
					current := x @ y + aPoint.
					backgroundColor := peek pixelAt: current.
					r := (((backgroundColor bitAnd: 16rff0000) bitShift: -16) * (255 - r) // 256) + (foregroundRed * r // 256).
					g := (((backgroundColor bitAnd: 16r00ff00) bitShift: -8) * (255 - g) // 256) + (foregroundGreen * g // 256).
					b := ((backgroundColor bitAnd: 16r0000ff) * (255 - b) // 256) + (foregroundBlue * b // 256).
					
					poker pixelAt: current put: (16rff000000 bitOr: ((r bitShift: 16) bitOr: ((g bitShift: 8) bitOr: b)))]]]