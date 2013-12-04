{read} = prunt = require 'prunt'
path = require 'path'
fs = require 'fs-extra'
jade = require 'jade'

coffee = do prunt.coffee
write = do prunt.write
compileJade = (files)->
  files.map (file)->
    {content, filename, dirname} = file
    file.content = jade.compile(content, {})()
    file.filename = filename.replace '.jade', '.html'
    file

mv = (source, dest)->
  source = path.normalize source
  dest = path.normalize dest
  (files)->
    files.map (file)->
      file.dirname = file.dirname.replace source, dest
      file

task 'coffee', 'compile coffee', ->
  read('src/**/*.coffee')
    .then(coffee)
    .then(mv('src', 'build/app/scripts'))
    .done(write)

task 'suites', 'compile test suites', ->
  read('test/**/*.coffee')
  .then(coffee)
  .then(mv('test', 'build/test'))
  .done(write)

task 'jade', 'compile jade', ->
  read('app/**/*.jade')
    .then(compileJade)
    .then(mv('app', 'build/app'))
    .done(write)

task 'build', 'build restman', ->
  invoke 'clean'
  invoke 'coffee'
  invoke 'jade'
  fs.copySync 'app/manifest.json', 'build/app/manifest.json'
  fs.copySync 'app/components', 'build/app/components'

task 'build:test', 'build for testem', ->
  invoke 'build'
  invoke 'suites'

task 'clean', 'clean builds', ->
  ['build'].forEach (dir)->
    fs.removeSync dir
    console.log "deleted #{dir}"

  console.log 'clean up'
