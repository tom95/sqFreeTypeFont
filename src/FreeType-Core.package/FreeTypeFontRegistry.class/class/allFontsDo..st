as yet unclassified
allFontsDo: aBlock

	(Array streamContents: [:s | TTFileDescription fontPathsDo: [:p | s nextPut: p]]) do: [:path |
		TTFileDescription fontFilesIn: path do: [:font |
			" FIXME: currently we just skip Light and Medium variants, as they override the Regular variant "
			(#('Light' 'Medium') noneSatisfy: [:style | font subfamilyName includesSubstring: style]) ifTrue: [
				| filename |
				filename := path, FileDirectory slash, font fileName.
				aBlock value: font value: filename]]] displayingProgress: 'Searching through font folders'