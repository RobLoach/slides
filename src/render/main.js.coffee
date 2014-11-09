---
webpack: true
---

# Load Reveal.js with the Webpack Script Loader.
require 'script!./vendor/components-revealjs/js/reveal.js'

# Initialize and run Reveal with the given options.
Reveal.initialize
  controls: true
  progress: true
  history: true
