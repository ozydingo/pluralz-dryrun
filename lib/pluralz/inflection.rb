require "strings-inflection"

module Pluralz
  module Inflection
    module_function

    def splural?(string)
      Strings::Inflection.plural?(string)
    end
  end
end
