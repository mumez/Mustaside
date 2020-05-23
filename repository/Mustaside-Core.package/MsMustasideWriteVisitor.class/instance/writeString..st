accessing
writeString: aString
	aString ifNotEmpty: [ 
		canvas html: aString ]