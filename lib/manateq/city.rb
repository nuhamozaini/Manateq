require_relative '../../lib/manateq/helper'
require_relative '../../lib/manateq/region'

module Manateq
class City
  include Manateq::Resource

  attr_accessor :id
  attr_accessor :region
  attr_accessor :arabic_name
  attr_accessor :english_name

  def self.resource_name
    'cities'
  end

  def self.fill data
    r_obj = self.new
    r_obj.id = data['city_id']
    r_obj.arabic_name = data['name']['ar']
    r_obj.english_name = data['name']['en']
    r_obj.region = Manateq::Region.get_by_id data['region_id']
    r_obj
  end

  def self.compare resource, name
    resource.arabic_name.downcase.index(name.downcase) != nil or
        resource.english_name.downcase.index(name.downcase) != nil
  end
end
end
