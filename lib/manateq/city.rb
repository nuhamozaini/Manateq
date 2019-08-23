require_relative '../../lib/manateq/helper'
require_relative '../../lib/manateq/region'

module Manateq
class City
  attr_accessor :id
  attr_accessor :region
  attr_accessor :arabic_name
  attr_accessor :english_name

  def self.list_cities
    data = Manateq::Helper.to_hash 'cities'
    result = []
    data.each do |city|
      c_obj = City.new
      c_obj.id = city['city_id']
      c_obj.arabic_name = city['name']['ar']
      c_obj.english_name = city['name']['en']
      c_obj.region = Manateq::Region.search_region_id city['region_id']
      result.append(c_obj)
    end
    result
  end

  def self.search_city name
    data = Manateq::City.list_cities
    result = nil
    data.each do |city|
      if city.arabic_name.downcase.index(name.downcase) != nil  or
        city.english_name.downcase.index(name.downcase) != nil
        result = city
      end
    end
    result
  end

  def self.search_city_id id
    data = Manateq::City.list_cities
    result = nil
    data.each do |city|
      unless city.id != id
        result = city
      end
    end
    result
  end
end
end
