actions
unregisteNamed: templateName
	^self templatesDict removeKey: templateName asSymbol ifAbsent:[]