accessing
blitGammaCorrectColored: aColor on: aDisplayContext at: aPoint

	| buffer pitch peek poker foregroundColor gamma |
	buffer := self buffer getHandle.
	pitch := self pitch.
	
	poker := BitBlt bitPokerToForm: aDisplayContext destForm.
	poker clipRect: aDisplayContext clipRect.
	peek := BitBlt bitPeekerFromForm: aDisplayContext destForm.
	foregroundColor := Vector3 from32BitColor: (aColor pixelWordForDepth: 32).
	gamma := 1.4.
	
	0 to: self width // 3 - 1 do: [:x |
		0 to: self rows - 1 do: [:y | | r g b base |
			base := y * pitch + (x * 3).
			r := buffer integerAt:  base + 1 size: 1 signed: false.
			g := buffer integerAt: base + 2 size: 1 signed: false.
			b := buffer integerAt: base + 3 size: 1 signed: false.
			
			r + g + b = 0
				ifFalse: [ | backgroundColor current intensity comp |
					current := x @ y + aPoint.
					intensity := Vector3 x: r / 255.0 y: g / 255.0 z: b / 255.0.
					backgroundColor := Vector3 from32BitColor: (peek pixelAt: current).
					
					comp := ((foregroundColor raisedTo: 1.0 / gamma) * intensity) + ((backgroundColor raisedTo: 1.0 / gamma) * (1 @ 1 @ 1 - intensity)).
					poker pixelAt: current put: (comp raisedTo: gamma) as32BitColor]]]