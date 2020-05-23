initialization
initialize
	super initialize.
	counter := WACounter new.
	showOrHideAddress := {true. false} atRandom.
	
	MsMustasideTemplates default registerFrom: '<div class="footer"><h4>{{title}}</h4>{{>date}}</div>' named: #footer.
	MsMustasidePartials default registerFrom: '<span>{{year}}-{{month}}</span>' named: #date