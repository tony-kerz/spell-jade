jade = require 'gulp-jade'

module.exports = ( warlock ) ->
  warlock.flow 'jade-to-build',
    source: [ '<%= globs.source.jade %>' ]
    source_options:
      base: "<%= paths.source_app %>"
    tasks: [ 'webapp-build' ]
    merge: 'flow::templates-to-build::90'

  .add( 50, 'jade-compile', jade )
