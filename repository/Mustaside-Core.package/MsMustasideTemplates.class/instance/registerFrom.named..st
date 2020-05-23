actions
registerFrom: templateStringOrStream named: templateName
	^self register: (MustacheTemplate on: templateStringOrStream) named: templateName