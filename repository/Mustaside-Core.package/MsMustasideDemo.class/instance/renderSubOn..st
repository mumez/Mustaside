rendering
renderSubOn: html
	html div class: 'sub'; with: [
		html div class: 'counter'; with: [html render:  counter].
		html div class: 'must2'; with: [
			html mustache: '<em>{{date}}</em>' values: {
				'date'->[Date today]
			}
		].
	]