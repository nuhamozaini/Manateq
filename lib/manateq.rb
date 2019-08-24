require_relative "manateq/version"
require_relative 'manateq/resource'
require_relative 'manateq/region'
require_relative 'manateq/city'
require_relative 'manateq/helper'
require_relative 'manateq/district'

module Manateq
  class Error < StandardError; end
  # Your code goes here...
end

pp Manateq::District.list