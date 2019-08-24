module Manateq
  module Resource

    def self.included base
      base.extend ClassMethods
    end

    module ClassMethods
      def resource_name
        'resource'
      end

      def fill data
        nil
      end

      def compare resource, name
        false
      end

      def list
        data = Manateq::Helper.to_hash self.resource_name
        result = []
        data.each do |resource|
          r_obj = self.fill resource
          result.append(r_obj)
        end
        result
      end

      def search name
        data = self.list
        result = nil
        data.each do |resource|
          if self.compare resource, name
            result = resource
            break
          end
        end
        result
      end

      def get_by_id id
        data = self.list
        result = nil
        data.each do |resource|
          unless resource.id != id
            result = resource
            break
          end
        end
        result
      end
    end

  end
end