# frozen_string_literal: true

require "pp"

module Dry
  class Struct
    def pretty_print(pp)
      klass = self.class
      pp.group(1, "#<#{klass.name || klass.inspect}", ">") do
        pp.seplist(@inner_attributes.keys, proc { pp.text "," }) do |column_name|
          column_value = @inner_attributes[column_name]
          pp.breakable " "
          pp.group(1) do
            pp.text column_name.to_s
            pp.text "="
            pp.pp column_value
          end
        end
      end
    end
  end
end
