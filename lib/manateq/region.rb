require 'json'
require_relative '../../lib/manateq/helper'
module Manateq
  class Region
    attr_accessor :id
    attr_accessor :arabic_name
    attr_accessor :english_name

    def self.get_regions
      data = Manateq::Helper.new.to_hash 'regions'
      result = []
      data.each do |region|
        r_obj = Region.new
        r_obj.id = region['region_id']
        r_obj.arabic_name = region['name']['ar']
        r_obj.english_name = region['name']['en']
        result.append(r_obj)
      end
      result
    end

    def self.search_region name
      data = Manateq::Region.get_regions

      result = nil

      data.each do |region|
        if region.arabic_name.downcase.index(name.downcase) != nil  or region.english_name.downcase.index(name.downcase) != nil
          result = region
        end
      end

      result
    end

  end
end

r = Manateq::Region.search_region 'Qassim'
pp r

# TODO: view all regions
#