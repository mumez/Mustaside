*Mustaside-Core
renderBy: aMustasideBrush on: aWACanvas
	| visitor |
	visitor := MsMustasideWriteVisitor new
		context: aMustasideBrush values;
		partials: aMustasideBrush partials;
		canvas: aWACanvas;
		yourself.
	self accept: visitor.
	