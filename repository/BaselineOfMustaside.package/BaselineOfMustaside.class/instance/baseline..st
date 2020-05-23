baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self seasideCore: spec.
		self mustache: spec.
		spec 
			package: 'Mustaside-Core'with: [ spec requires: #('Seaside-Core' 'Mustache')].
		spec 
			group: 'Core' with: #('Mustaside-Core' );
			group: 'default' with: #('Core')].
