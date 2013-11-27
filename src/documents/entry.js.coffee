# Load Reveal.js with the Webpack Script Loader.
require 'script!./vendor/components-revealjs/js/reveal.js'

# Load the Reveal.js full screen background image plugin.
require 'script!./vendor/reveal.js-fullscreen-img/fullscreen-img.js'

# Initialize and run Reveal with the given options.
Reveal.initialize
  controls: true
  progress: true
  history: true
