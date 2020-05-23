rendering
renderContentOn: html
	html heading level: 1; with: 'Mustaside Demo'.
	
	html div class: 'must1'; with: [
		html mustache: '{{time}}{{#subSection}}{{/subSection}}{{#address}}some address{{/address}}{{^address}}no address!!{{/address}}' values: {
			'time'->[Time now].
			'subSection'->[self renderSubOn: html].
			'address'->showOrHideAddress.
		}
	].

	"html heading level: 4; with: 'Mustaside Demo Footer'."
	html mustacheNamed: #footer  values: {
		'title'->'Mustaside Demo Footer'.
		'year'-> 2015.
		'month'-> 8.
	}