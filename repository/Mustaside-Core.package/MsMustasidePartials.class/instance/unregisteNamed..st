actions
unregisteNamed: partialName
	^self partialsDict removeKey: partialName asSymbol ifAbsent:[]