deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'rock64'
	name: 'rock64'
	arch: 'aarch64'
	state: 'experimental'

	instructions: commonImg.instructions
	
	gettingStartedLink:
		windows: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'rock64'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-thud'
		deployArtifact: 'resin-image-rock64.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
