module Manateq
  class District
    attr_accessor :id
    attr_accessor :arabic_name
    attr_accessor :english_name
    attr_accessor :city

    def self.list_districts
      data = Manateq::Helper.to_hash 'districts'
      result = []
      data.each do |district|
        d_obj = District.new
        d_obj.id = district['district_id']
        d_obj.arabic_name = district['name']['ar']
        d_obj.english_name = district['name']['en']
        d_obj.city = Manateq::City.search_city_id district['city_id']
        result.append(d_obj)
      end
      result
    end

    def self.search_district name
      data = Manateq::District.list_districts
      result = nil
      data.each do |district|
        if district.arabic_name.downcase.index(name.downcase) != nil  or
            district.english_name.downcase.index(name.downcase) != nil
          result = district
        end
      end
      result
    end

    def self.search_district_id id
      data = Manateq::District.list_districts
      result = nil
      data.each do |district|
        unless district.id != id
          result = district
        end
      end
      result
    end
  end
end