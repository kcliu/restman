assert = undefined

describe 'sample test suite', ->
  before (done) ->
    if require?
      {assert} = require 'chai'
      do done
    else
      # Wait until document ready to run tests.
      # Otherwise sometime tests will fire before chai is loaded :(
      $ ->
        {assert} = chai
        do done

  it 'should work', (done) ->
    assert.isTrue true
    do done
