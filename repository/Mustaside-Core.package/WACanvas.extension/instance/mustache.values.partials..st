*Mustaside-Core-actions
mustache: aTemplateOrString values: valuesDict partials: partialsDict
	| template mustacheBrush |
	template := aTemplateOrString isString ifTrue: [MustacheTemplate on: aTemplateOrString] ifFalse: [aTemplateOrString].
	mustacheBrush := self mustache template: template; yourself.
	mustacheBrush partials: partialsDict.
	mustacheBrush fire: valuesDict.