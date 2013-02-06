module Searchlogic
  module Conditions
    class LessThan < Condition
      def scope
        klass.where("#{table_name}.#{column_name} < ?", "#{value}") 
      end

      private
        def value
          args.first
        end
    end
  end
end