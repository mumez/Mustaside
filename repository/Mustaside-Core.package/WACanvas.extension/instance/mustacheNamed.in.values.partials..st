*Mustaside-Core-actions
mustacheNamed: templateName in: templateDict values: valuesDict partials: partialsDict
	| template |
	template := templateDict at: templateName ifAbsent: [^self].
	^self mustache: template values: valuesDict partials: partialsDict