# Expose `Gruntfile`.
module.exports = (grunt) ->

  # Create the banner for the stylesheet and JavaScript files.
  banner = "/*! <%= pkg.description %> v<%= pkg.version %> | <%= pkg.license %> License | <%= pkg.author %> */\n"

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    # Use LESS to concatinate all the CSS files together.
    less:
      options:
        paths: ["out"]
      compile:
        files:
          "out/main.css": "out/main.css"

    # Use CSSMin to minify the CSS files.
    cssmin:
      options:
        banner: banner
      min:
        files:
          "out/main.css": "out/main.css"

    # Use Webpack to bundle all the JavaScript together correctly.
    webpack:
      compile:
        context: "out"
        entry: "./entry.js"
        output:
          path: "out/"
          filename: "main.js"
        stats:
          colors: true
          reasons: true
        failOnError: true
        optimize:
          minimize: true

  # Build the available Grunt tasks.
  grunt.loadNpmTasks "grunt-contrib-cssmin"
  grunt.loadNpmTasks "grunt-contrib-less"
  grunt.loadNpmTasks "grunt-webpack"

  # Register our Grunt tasks.
  grunt.registerTask "no-min", ["webpack"]
  grunt.registerTask "default", ["webpack", "less", "cssmin"]
