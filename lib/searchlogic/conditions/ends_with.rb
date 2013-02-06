module Searchlogic
  module Conditions
    class EndsWith < Condition
      def scope
        klass.where("#{table_name}.#{column_name} like ?", "%#{value}")
      end

      private
        def value
          args.first
        end
    end
  end
end