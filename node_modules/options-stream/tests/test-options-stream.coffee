#mocha
e = require 'expect.js'
fs = require 'fs'

describe 'Options Stream', ->
  optionsStream = require '../lib/options-stream'
  it 'not reference', ->
    a = a:1
    b = a:2
    c = optionsStream a
    c.a = 3
    e(a.a).to.be 1
    e(b.a).to.be 2
  describe 'Merge', ->
    it 'simple options', ->
      c = optionsStream {a:1}, {b:2}, {a:3}
      e(c).to.eql {a:3, b:2}
    it 'with array', ->
      c = optionsStream {a:[1,2,3]}, {b:[4,5,6]}, {a:[7,8,9]}
      e(c).to.eql {a:[7,8,9], b:[4,5,6]}
    it 'with buffer', ->
      c = optionsStream {a:new Buffer('aaa')}, {a:new Buffer('bbb')}
      e(c.a.toString()).to.eql 'bbb'
    it 'with deep object', ->
      c = optionsStream {a:{aa:1}}, {a:{ab:2}}, {a:{aa:3}}
      e(c).to.eql {a:{aa:3,ab:2}}
    it 'type overwrite', ->
      c = optionsStream {a:{aa:1}, b:1,c:{ca:1}}, {a:{ab:2}, b:{ba:3}}, {a:{aa:3}, c:3}
      e(c).to.eql {a:{aa:3,ab:2}, b:{ba:3}, c:3}
  describe 'Freeze', ->
    it 'default off', ->
      c = optionsStream a:1, d:4
      c.a = 2
      c.b = 3
      delete c.d
      e(c.a).to.be 2
      e(c.b).to.be 3
      e(c).not.contain 'd'
    it 'can set TRUE', ->
      c = optionsStream a:1, d:4, true
      c.a = 2
      c.b = 3
      delete c.d
      e(c.a).to.be 1
      e(c).not.contain 'b'
      e(c.d).to.be 4
    it 'can set FALSE', ->
      c = optionsStream a:1, d:4, false
      c.a = 2
      c.b = 3
      delete c.d
      e(c.a).to.be 2
      e(c.b).to.be 3
      e(c).not.contain 'd'
  describe 'File Format', ->
    it 'ini file', ->
      c = optionsStream "#{__dirname}/config.ini"
      exp =
        number1: '1'
        true1: 'yes'
        false1: 'FALSE'
        true2: 'On'
        string1: 'abcde'
        string2: 'abcde'
        slash1: 'slash"slash'
        slash2: 'slash\'slash'
        slash3: 'slash\nslash'
        level1:
          level2: '1'
          level3:
            level4: '1'
      e(c).to.eql exp
    it 'json file', ->
      c = optionsStream "#{__dirname}/config.json"
      e(c).to.eql {a:123}

    it 'yaml file', ->
      c = optionsStream "#{__dirname}/config.yml"
      e(1).to.be 1
      exp =
        number1: 1
        true1: true
        false1: false
        true2: true
        string1: 'abcde'
        string2: "abcde"
        string3: 'abcde'
        slash1: "slash'slash"
        slash2: 'slash"slash'
        slash3: "slash\tslash"
        slash4: "slash\nslash"
        level1:
          level2: '1'
          level3:
            level4: '1'
        array1: [ 1, 2, true, false, 'asdfg' ]
      e(c).to.eql exp

