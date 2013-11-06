module.exports = (grunt) ->

  grunt.initConfig
    json_schema:
      manifest:
        files:
          "manifest.schema.json": "test/*.json"

    tv4:
      options:
        multi: true
        fresh: true

      manifest:
        files:
          "manifest.schema.json": "test/*.json"

  grunt.loadNpmTasks "grunt-json-schema"
  grunt.loadNpmTasks "grunt-tv4"

  grunt.registerTask 'default', ['tv4']
