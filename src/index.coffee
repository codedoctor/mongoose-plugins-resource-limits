mongoose = require("mongoose")


ResourceLimitType =
  name:
    type : String
    required: true
    trim: true
  quantity:
    type : Number
    default : 0


exports.resourceLimits = (schema, options) ->
  options = {} unless options

  schema.add
    resourceLimits:
      type: [ResourceLimitType]
      defaults: () -> []

  # TODO: Add  resource limit methods