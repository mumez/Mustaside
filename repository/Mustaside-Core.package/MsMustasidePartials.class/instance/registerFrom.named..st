actions
registerFrom: partialStringOrStream named: partialName
	^self register: (MustacheTemplate on: partialStringOrStream) named: partialName