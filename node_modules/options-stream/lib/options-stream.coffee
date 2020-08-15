fs = require 'fs'
path = require 'path'
yaml = require 'yamljs'
ini = require 'ini'
merge = (o1, o2) ->
  for k of o2
    # console.log k, o1[k], o2[k], typeof  o1[k], typeof o2[k]
    iso1 = typeof o1[k] is 'object' and o1[k] isnt null and 0 is o1[k].constructor.toString().indexOf 'function Object()'
    iso2 = typeof o2[k] is 'object' and o2[k] isnt null and 0 is o2[k].constructor.toString().indexOf 'function Object()'
    # console.log iso1, iso2, typeof o1[k] is 'object', o1[k].constructor.toString()
    if iso1 and iso2
      merge o1[k], o2[k]
    else if o2[k] isnt undefined
      o1[k] = o2[k]
    # if typeof o2[k] is 'object' and 0 is o2[k].constructor.toString().indexOf 'function Object'

    #   # merge o1[k], o2[k]
    # else

    #   if typeof o1[k] isnt 'object' or o1[k] instanceof Array or o1[k] instanceof Buffer
    #     console.log 1
    #     o1[k] = o2[k]
    #   else
    #     merge(o1[k], o2[k])
    # else
    #   o1[k] = o2[k]
  o1

module.exports = (args...) ->
  c = {}
  freeze = false
  [args..., freeze] = args if typeof args[args.length-1] is 'boolean'

  for arg in args
    if typeof arg is 'string'
      merge c, switch path.extname arg
        when '.ini' then ini.parse fs.readFileSync(arg).toString()
        when '.json' then JSON.parse fs.readFileSync arg
        when '.yml', '.yaml' then yaml.parse fs.readFileSync(arg).toString().trim()
    else if arg isnt undefined
      merge c, arg
  Object.freeze c if freeze
  c

