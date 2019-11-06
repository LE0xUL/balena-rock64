deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'aistick'
	name: 'aistick'
	arch: 'aarch64'
	state: 'experimental'

	instructions: commonImg.instructions
	
	gettingStartedLink:
		windows: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.balena.io/rock64/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'aistick'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-warrior'
		deployArtifact: 'resinos-image-aistick.img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
