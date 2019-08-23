require_relative "manateq/version"
require_relative 'manateq/region'
require_relative 'manateq/city'
require_relative 'manateq/helper'
require_relative 'manateq/district'

module Manateq
  class Error < StandardError; end
  # Your code goes here...
end

# TODO: optimize file read, the whole file loaded on memory is a memory consumption
# TODO: methods (list and search) are repeated, redundant code.