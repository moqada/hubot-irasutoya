# coffeelint: disable=max_line_length
Helper = require 'hubot-test-helper'
assert = require 'power-assert'

describe 'irasutoya', ->
  room = null

  beforeEach ->
    helper = new Helper('../src/scripts/irasutoya.coffee')
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  it 'help', ->
    helps = room.robot.helpCommands()
    assert.deepEqual helps, [
      'hubot irasutoya - Fetch random irasuto'
      'hubot irasutoya <keyword> - Search irasuto'
    ]
