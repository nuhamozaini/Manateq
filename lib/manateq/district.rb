module Manateq
  class District
    include Manateq::Resource

    attr_accessor :id
    attr_accessor :arabic_name
    attr_accessor :english_name
    attr_accessor :city

    def self.resource_name
      'districts'
    end

    def self.fill data
      r_obj = self.new
      r_obj.id = data['district_id']
      r_obj.arabic_name = data['name']['ar']
      r_obj.english_name = data['name']['en']
      r_obj.city = Manateq::Region.get_by_id data['city_id']
      r_obj
    end

    def self.compare resource, name
      resource.arabic_name.downcase.index(name.downcase) != nil or
          resource.english_name.downcase.index(name.downcase) != nil
    end

  end
end